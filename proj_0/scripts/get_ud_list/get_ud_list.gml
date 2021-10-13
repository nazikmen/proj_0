function get_ud_list(){
	var ds = ds_list_create();
	//[ud_name,global_name,default_value]
	ds_list_add(ds,
	["damage","damage",1],
	["lvl","lvl",1],
	["coins","coins",0],
	["s_coins","s_coins",0]
	)
	
	//weapons [ud_name,global_name,[...]]
	//... [type,ind,effect]
	ds_list_add(ds,
	["milts_king_staff","milts_king_staff",["staff",100,1]],
	["emerald_halberd","emerald_halberd",["axe",101,1]],
	["fireheart_staff","fireheart_staff",["staff",102,1]]
	)
	
	//items Предметы у которых из переменных только количество
	//[ud_name,global_name,default_value]
	ds_list_add(ds,
	["ingot_iron","item_ingot_iron",0],
	["ingot_cooper","item_ingot_cooper",0],
	["ingot_tin","item_ingot_tin",0],
	["ingot_gold","item_ingot_gold",0],
	["ingot_lead","item_ingot_lead",0],
	["ingot_platinum","item_ingot_platinum",0]//,
	//["ingot_tin","item_ingot_tin",0],
	//["ingot_tin","item_ingot_tin",0],
	//["ingot_tin","item_ingot_tin",0],
	//["ingot_tin","item_ingot_tin",0],
	//["ingot_tin","item_ingot_tin",0],
	//["ingot_tin","item_ingot_tin",0],
	//["ingot_tin","item_ingot_tin",0]
	)
	return ds;
	
	
	
}

function item_id(ind){
	try{
		switch(ind){
		
			case 0: return global.item_iron_ingot;
			case "item_iron_ingot": return 0;
		
			case 1: return global.item_ingot_cooper;
			case "item_ingot_cooper": return 1;
		
			case 2: return global.item_ingot_tin;
			case "item_ingot_tin": return 2;
		
			case 3: return global.item_ingot_gold;
			case "item_ingot_gold": return 3;
		
			case 4: return global.item_ingot_lead;
			case "item_ingot_lead": return 4;
			
			case 5: return global.item_ingot_platinum;
			case "item_ingot_platinum": return 5;
			
			case 100: return global.milts_king_staff;
			case "milts_king_staff": return 100;
		
			case 101: return global.emerald_halberd;
			case "emerald_halberd": return 101;
		
			case 102: return global.fireheart_staff;
			case "fireheart_staff": return 102;
		
			
		
		}
	}
	catch(e){sd(e);return -1}
}