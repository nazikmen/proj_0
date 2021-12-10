function sd() {
	var v_show_obj_name = true
	var v_v_str = ""
	for(var i = 0; i < argument_count; i++) {
		v_v_str = v_v_str + string(argument[i])+" "
	}
	try {
		if(v_show_obj_name) {
			v_v_str = string(object_get_name(object_index)) + ": " + v_v_str
		}
	} catch(e) {}
	show_debug_message(v_v_str)
}