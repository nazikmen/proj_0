
function scr_file(){}
function get_project_dir() {
    // get_project_dir();
    var proj_dir="";
    for(var ii=0;ii<parameter_count();ii++){
        if(parameter_string(ii)=="-game"){
            var tb=buffer_load(filename_drive(parameter_string(ii+1))+"/build.bff");
            if(!buffer_exists(tb)) return proj_dir;
            var jt=buffer_read(tb,buffer_text);
            buffer_delete(tb);
            if(jt==undefined) return proj_dir;
            var pm=json_decode(jt);
            if(!ds_exists(pm,ds_type_map)) return proj_dir;
            proj_dir=pm[?"projectDir"];
            ds_map_destroy(pm);
            if(proj_dir==undefined)proj_dir="";
			sd("proj_dir finded")
            return proj_dir;
        }
    }
    return proj_dir;


}
function file_read_text(path_file) 
{
	var res=undefined;
	if(file_exists(path_file))
	{
	    var t_buff=buffer_load(path_file);
	    res=buffer_read(t_buff,buffer_text);
	    buffer_delete(t_buff);
	}
	return res;
}
function file_write_text(file,text)
{
	var len=string_byte_length(text);
	var t_buff=buffer_create(len,buffer_fixed,1);
	buffer_write(t_buff,buffer_text,text);
	buffer_save(t_buff,file);
	buffer_delete(t_buff);
}
function json_read(file)
{
	if(file_exists(file))
	{
		var f=file_text_open_read(file);
		var s=file_text_read_string(f);
		file_text_close(f);
		return s;
	}
	else return "";
}

function text_read_lines(string_text)
{
	var res;
	string_text=string_replace_all(string_text,chr($D),"");
	var li=0;
	var t_size=string_length(string_text);
	var t_pos=1;
	for(var ii=1;ii<=t_size;ii++)
	{
	    if(string_ord_at(string_text,ii)==$A)
		{
	        res[li++]=string_copy(string_text,t_pos,ii-t_pos);
	        t_pos=ii+1;
	    }
		else if(ii==t_size)
	        res[li++]=string_copy(string_text,t_pos,ii-t_pos+1);
	}
	return res;
}
function text_write_lines(array)
{
	var res="";
	for(var ii=0;ii<array_length(array);ii++)
	{
	    res+=string(array[ii])+chr($d)+chr($a);    
	}
	return res;
}
function write_file(file,text)
{
	var f=file_text_open_write(file);
	file_text_write_string(f,string(text));
	file_text_close(f);
}
