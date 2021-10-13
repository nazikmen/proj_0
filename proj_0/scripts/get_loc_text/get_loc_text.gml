// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_loc_text(key){
	switch(key){
		case "sound_btn":{
			switch (global.locale){
				case "en":{
					return "  Sound";	
				}
				case "ru":{
					return "Звук";	
				}
			}
		}
		case "play_btn":{
			switch (global.locale){
				case "en":{
					return "Play";	
				}
				case "ru":{
					return "Играть";	
				}
			}
		}
		case "options_btn":{
			switch (global.locale){
				case "en":{
					return "Options";	
				}
				case "ru":{
					return "Настройки";	
				}
			}
		}
		case "exit_btn":{
			switch (global.locale){
				case "en":{
					return "Exit";	
				}
				case "ru":{
					return "Выход";	
				}
			}
		}
		case "loading":{
			switch (global.locale){
				case "en":{
					return "Loading...";	
				}
				case "ru":{
					return "Загрузка...";	
				}
			}
		}
		case "choose_char":{
			switch (global.locale){
				case "en":{
					return "Choose character";	
				}
				case "ru":{
					return "Выбери персонажа";	
				}
			}
		}
		case "btn_menu":{
			switch (global.locale){
				case "en":{
					return "Menu";	
				}
				case "ru":{
					return "Меню";	
				}
			}
		}
		case "text_cnt":{
			switch (global.locale){
				case "en":{
					return "pc.";	
				}
				case "ru":{
					return "шт.";	
				}
			}
		}
		case "invertory_btn":{
			switch (global.locale){
				case "en":{
					return "Invertory.";	
				}
				case "ru":{
					return "Инвертарь";	
				}
			}
		}
		case "lorem50":{
			switch (global.locale){
				case "en":{
					return "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lacinia tortor vel nisi condimentum placerat. Duis dolor elit, commodo at dictum eu, maximus et nibh. Morbi consectetur ante et euismod facilisis. Donec diam augue, vehicula sagittis dignissim eu, bibendum accumsan ipsum. Sed vulputate elit in leo molestie, at fringilla quam.";	
				}
				case "ru":{
					return "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lacinia tortor vel nisi condimentum placerat. Duis dolor elit, commodo at dictum eu, maximus et nibh. Morbi consectetur ante et euismod facilisis. Donec diam augue, vehicula sagittis dignissim eu, bibendum accumsan ipsum. Sed vulputate elit in leo molestie, at fringilla quam.";	
				}
			}
		}
	}
}