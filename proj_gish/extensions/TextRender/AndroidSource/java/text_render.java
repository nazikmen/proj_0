package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.graphics.Paint;
import android.text.TextPaint;

import android.graphics.Rect;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.GLES11Ext;
import android.opengl.Matrix;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.io.FileOutputStream;
import android.os.Environment;
import java.io.File;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextUtils.TruncateAt;
import android.graphics.Typeface;

public class text_render {
	public static TextPaint text_paint=null;
	public static String text;
	static int width=-1;
	static int height=-1;
	static int max_width=0;
	static Layout.Alignment align=Layout.Alignment.ALIGN_NORMAL;

	public double create(String _text,double _size,double _style,double _mwidth){
		int size=(int)_size;
		int valign=((int)_style)&0x3;
		int style=(((int)_style)&0x1c)>>2;
		max_width=(int)_mwidth;
		text=_text;
		switch(valign){
			case 0:
				align=Layout.Alignment.ALIGN_NORMAL;
			break;
			case 1:
				align=Layout.Alignment.ALIGN_OPPOSITE;
			break;
			case 2:
				align=Layout.Alignment.ALIGN_CENTER;
			break;
		}
		
		text_paint=new TextPaint();
		switch(style&3){
			case 1:
				text_paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
			break;
			case 2:
				text_paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.ITALIC));
			break;
			case 3:
				text_paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD_ITALIC));
			break;			
		}
		if((style&4)==4)text_paint.setFlags(Paint.UNDERLINE_TEXT_FLAG);

		text_paint.setTextSize(size);
		text_paint.setARGB(0xff,0xFF,0xFF,0xFF);
		text_paint.setAntiAlias(true);
		text_paint.setTextAlign(TextPaint.Align.LEFT);
		if(max_width==0)width=(int)StaticLayout.getDesiredWidth(text,text_paint);
		else width=max_width;
		StaticLayout mTextLayout = new StaticLayout(text,0,text.length(),text_paint,width,align,1.0f,0.0f,false);
		height=mTextLayout.getHeight();
		return 1.0;
	}
	
	public void make(){
		Bitmap bmp=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);
		Canvas canv=new Canvas(bmp);
		bmp.setPremultiplied(false);
		bmp.eraseColor(0x00FFFFFF);
		StaticLayout mTextLayout = new StaticLayout(text,0,text.length(),text_paint,width,align,1.0f,0.0f,false);
		mTextLayout.draw(canv);
		GLUtils.texImage2D(GLES20.GL_TEXTURE_2D,0,bmp,0);
		bmp.recycle();
		text_paint=null;
	}
	public double getWidth(){
		return width;
	}

	public double getHeight(){
		return height;
	}
}