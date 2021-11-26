#import "text_render.h"
#import <GLKit/GLKit.h>
@implementation text_render
	GLubyte* textureData;
	
	-(double) create:(char*)_text Arg2:(double) _size Arg3:(double)_style Arg4:(double)_msize {

		self.text=[NSString stringWithCString:_text encoding:NSUTF8StringEncoding];
		int tsize=(int)_size;
		int talg=((int)_style)&0x3;
		int tstyle=(((int)_style)&0x1c)>>2;
		int max_width=(int)_msize;

		
		UIFontDescriptor *fontDescriptor = [UIFontDescriptor fontDescriptorWithName:@"Helvetica" size:tsize];
		NSString *normalFont = [[fontDescriptor fontAttributes]valueForKey:UIFontDescriptorNameAttribute];

		NSString *italicsFont = [[[fontDescriptor fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitItalic]fontAttributes]valueForKey:UIFontDescriptorNameAttribute];
		NSString *boldFont = [[[fontDescriptor fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold]fontAttributes]valueForKey:UIFontDescriptorNameAttribute];
		NSString *boldAndItalicsFont = [[[fontDescriptor fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold | UIFontDescriptorTraitItalic]fontAttributes]valueForKey:UIFontDescriptorNameAttribute];

		NSString *fnt_name=normalFont;

		switch(tstyle&3){
			case 1:
				fnt_name=boldFont;
			break;
			case 2:
				fnt_name=italicsFont;
			break;
			case 3:
				fnt_name=boldAndItalicsFont;
			break;			

		}

		NSUnderlineStyle us=NSUnderlineStyle(NSUnderlineStyleNone);
		if((tstyle&4)==4)us=NSUnderlineStyle(NSUnderlineStyleSingle);

		UIFont *ufont=[UIFont fontWithName:fnt_name size:tsize];
		

		NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];

		switch(talg){
			case 0:
				paragraphStyle.alignment = NSTextAlignmentLeft;

			break;
			case 1:
				paragraphStyle.alignment = NSTextAlignmentRight;

			break;
			case 2:
				paragraphStyle.alignment = NSTextAlignmentCenter;
			break;
		}

		NSDictionary *att = @{NSFontAttributeName : ufont,
			NSForegroundColorAttributeName : [UIColor whiteColor],
			NSParagraphStyleAttributeName : paragraphStyle,
			NSUnderlineStyleAttributeName:[NSNumber numberWithInt:us]
		};

		CGSize gsize = [self.text sizeWithAttributes:att];
		if(max_width!=0){
			
			CGFloat desiredWidth = max_width;
			CGRect neededRect = [self.text
				boundingRectWithSize:CGSizeMake(desiredWidth, CGFLOAT_MAX)
				options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
				attributes:att context:nil];
			gsize=neededRect.size;
		}
		
		CGRect rect = CGRectMake(0, 0, gsize.width, gsize.height);

		self.width = gsize.width;
		self.height = gsize.height;
		textureData = (GLubyte *)malloc(self.width * self.height * 4); 
		CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
		NSUInteger bytesPerPixel = 4;
		NSUInteger bytesPerRow = bytesPerPixel * self.width;
		NSUInteger bitsPerComponent = 8;  
		CGContextRef context = CGBitmapContextCreate(textureData, self.width, self.height,
		                                             bitsPerComponent, bytesPerRow, colorSpace,
		                                             kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big);

		CGColorSpaceRelease(colorSpace);
		CGContextTranslateCTM(context, 0, self.height);
		CGContextScaleCTM(context, 1.0, -1.0);
		UIGraphicsPushContext(context);
		[[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0] set];
		UIRectFill(rect);
		[self.text drawInRect:rect withAttributes:att];
		UIGraphicsPopContext();
		CGContextRelease(context);
		uint64_t* pdata=(uint64_t *)textureData;
		for(int i=0;i<(self.width * self.height)/2;i++){
			pdata[i]|=0x00FFFFFF00FFFFFF;

		}
		return 0.0;

	}
	-(void) make {
		glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, self.width, self.height, 0, GL_RGBA, GL_UNSIGNED_BYTE, textureData);
		free(textureData);
	}

	-(double) getWidth {
		return self.width;
	}
	-(double) getHeight {
		return self.height;
	}

@end