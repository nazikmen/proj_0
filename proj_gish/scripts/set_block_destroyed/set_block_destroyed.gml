// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_block_destroyed(p){
	with(obj_bur_controller){
			//n = 4;//камень 1
			//n = 6;//камень 2
			//n = 8;//камень 3
			//n = 10;//камень 4
			//n = 12;//камень 5
			//n = 14;//камень 6
			//n = 16;//лава синяя
			//n = 18;//лава красная	
			
			var iron_rand_coin = irandom_range(10,50);//iron = n000;
			var gold_rand_coin = irandom_range(100,150);//gold = n001;
			var coal_rand_coin = irandom_range(20,100);//coal = n002;
			var cooper_rand_coin = irandom_range(20,250);//cooper = n003;
			var diamond_rand_coin = irandom_range(1000,1500);//diamond = n004;
			var izumrude_rand_coin = irandom_range(1500,2000);//izumrude = n005;
			var lazurite_rand_coin = irandom_range(800,1050);//lazurite = n006;
			var redstone_rand_coin = irandom_range(900,1200);//redstone = n007;
			var mnozhitel_prib = 1;
			var num = ds_grid_get(active_grid,p[0],p[1]);
			
			switch(num){//blocks
				case 2: ds_grid_set(active_grid,p[0],p[1],3);break;
				case 4: ds_grid_set(active_grid,p[0],p[1],5);break;
				case 6: ds_grid_set(active_grid,p[0],p[1],7);break;
				case 8: ds_grid_set(active_grid,p[0],p[1],9);break;
				case 10: ds_grid_set(active_grid,p[0],p[1],11);break;
				case 12: ds_grid_set(active_grid,p[0],p[1],13);break;
				case 14: ds_grid_set(active_grid,p[0],p[1],15);break;
				case 16: ds_grid_set(active_grid,p[0],p[1],17);break;
				case 18: ds_grid_set(active_grid,p[0],p[1],19);break;
			}
			
			switch(num){//ores
				#region 4
				case 4000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				case 4001: {
					var dr = irandom_range(100,150)
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				case 4002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				case 4003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				case 4004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				case 4005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				case 4006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				case 4007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					bur_save();
					break;
				}
				#endregion
				
				#region 6
				case 6000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				case 6001: {
					var dr = gold_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				case 6002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				case 6003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				case 6004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				case 6005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				case 6006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				case 6007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],7);
					bur_save();
					break;
				}
				#endregion
				
				#region 8
				case 8000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				case 8001: {
					var dr = gold_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				case 8002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				case 8003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				case 8004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				case 8005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				case 8006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				case 8007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],9);
					bur_save();
					break;
				}
				#endregion
				
				#region 10
				case 10000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				case 10001: {
					var dr = gold_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				case 10002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				case 10003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				case 10004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				case 10005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				case 10006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				case 10007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],11);
					bur_save();
					break;
				}
				#endregion
				
				#region 12
				case 12000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				case 12001: {
					var dr = gold_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				case 12002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				case 12003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				case 12004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				case 12005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				case 12006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				case 12007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],13);
					bur_save();
					break;
				}
				#endregion
				
				#region 14
				case 14000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				case 14001: {
					var dr = gold_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				case 14002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				case 14003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				case 14004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				case 14005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				case 14006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				case 14007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],15);
					bur_save();
					break;
				}
				#endregion
				
				#region 16
				case 16000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				case 16001: {
					var dr = gold_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				case 16002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				case 16003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				case 16004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				case 16005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				case 16006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				case 16007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],17);
					bur_save();
					break;
				}
				#endregion
				
				#region 18
				case 18000: {
					var dr = iron_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				case 18001: {
					var dr = gold_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				case 18002: {
					var dr = coal_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				case 18003: {
					var dr = cooper_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				case 18004: {
					var dr = diamond_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				case 18005: {
					var dr = izumrude_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				case 18006: {
					var dr = lazurite_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				case 18007: {
					var dr = redstone_rand_coin*mnozhitel_prib;
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],19);
					bur_save();
					break;
				}
				#endregion
				
			}
			surface_set_target(active_surf);
			scr_draw_world_blocks(ds_grid_get(active_grid,p[0],p[1]),p[0]*ceil_size+32,p[1]*ceil_size+32);
			surface_reset_target();
		}
}