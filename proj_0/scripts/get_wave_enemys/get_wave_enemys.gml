// Script assets have changed for v2.3.0 see
// return [[spawn_time in seconds(min 1), enemy id],[spawn_time in seconds, enemy id]]
function get_wave_enemys(wv_num){
	
	if(wv_num != 0 and wv_num%10 = 0){
		return choose([[1,43]],[[1,45]]);
	}
	
	switch(wv_num%10){
		case 0:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 1:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 2:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 3:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 4:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 5:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 6:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 7:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 8:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
		case 9:{
			return [[1,irandom_range(0,5)],[3,irandom_range(5,15)],[4,irandom_range(15,25)],
			[6,irandom_range(15,25)],[7,irandom_range(8,5)],[10,irandom_range(10,15)],
			[11,irandom_range(0,10)],[11,irandom_range(15,25)],[14,irandom_range(0,5)],[15,irandom_range(10,20)]]	
		}
	}
}