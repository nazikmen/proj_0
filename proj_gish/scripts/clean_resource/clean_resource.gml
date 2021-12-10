function clean_resource() {
	// clean_resource();
	try{
		while(!ds_queue_empty(global.loaded_sprites)) {
			var name = ds_queue_dequeue(global.loaded_sprites);
			var spr = ds_queue_dequeue(global.loaded_sprites);
			//sdb("spr_name: "+string(name)+", number: "+string(spr));
			variable_global_set(name,-1);
			if(sprite_exists(spr))sprite_delete(spr);
		}
		}
	catch(e){
		sd("clean_resource() FAILED:\n\n",e);
		//FireBase_AnalyticsEvent("clean_resource_fail");
	}
}