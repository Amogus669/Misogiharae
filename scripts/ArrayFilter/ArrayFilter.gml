function array_filter(_array, func, offset = 0, length) {
	var _new_array = [];
	var pos = 0;
	var _len = array_length(_array);
	for (i = 0; i < _len; i += 1) {
		if (func(_array[i]) ) {
			_new_array[pos] = _array[i]; 
			pos +=1; 
		}
	}
	return _new_array;
}