function array_find_index(_array, func, offset = 0, length) {
	var _len = array_length(_array);
	for (i = 0; i < _len; i += 1) {
		if (func(_array[i]) ) {
			return i;
		}
	}
	return -1;
}