if(os_type!=os_windows)exit;
if(room!=rm_dlg_constructor)exit;
//get_dlg_btn_pos()
var center = get_center_coords();

var otvet = "\tcase "+string(ind)+": return "+string([x-center[0],y-center[1]])+";"

var st=file_read_text(global.project_directory+@"\scripts\get_dlg_spr_pos\get_dlg_spr_pos.gml");
var ls=text_read_lines(st);
var changed = false;
for(var i = 0; i < array_length_1d(ls); i++) {
    if(string_pos("\tcase "+string(ind),ls[i])!=0) {
        changed = true;
        ls[i] = otvet;
        break;
    }
}
if(!changed){
    for(var i = 0; i < array_length_1d(ls); i++) {
        if(string_pos("\t//jepa",ls[i])!=0) {
            changed = true;
            ls[i] = otvet+"\n\t//jepa";
            break;
        }
    }
}
st=text_write_lines(ls);
file_write_text(global.project_directory+@"\scripts\get_dlg_spr_pos\get_dlg_spr_pos.gml",st);
sd("save spr "+string(ind)+" pos: "+otvet);