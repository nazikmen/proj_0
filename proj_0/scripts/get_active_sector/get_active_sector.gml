function get_active_sector(_x,_y){//Возвращает координаты грида в который попадает точка
	if(_x>=0)_x=_x-(_x%(16*ceil_size));
	else if(_x>-1024)_x=_x-(1024-(-_x%(16*ceil_size)));
	else{
		_x+=64;
		_x=_x-(1024-(-_x%(16*ceil_size)));
	}
	_y=_y-(_y%(16*ceil_size));
	return [_x,_y];
}