function string_ext(_str, _array) {
	var _len = array_length(_array);
	var _output = "";
	var _edit = true; 
	var _num = "";
	for (var i = 1 ; i <= string_length(_str); i++) {
		var _char = string_char_at(_str, i);
		if (_edit and _char != "{") {
			_output += _char;
		}
		if (_edit and _char == "{") {
			_edit = false;
			continue;
		}
		if (!_edit and _char != "}") {
			_num += _char;
		}
		if (!_edit and _char == "}") {
			var _word = _array[real(_num)];
			_output += _word;
			_edit = true;
			_num = "";
		}
	}
	return _output;
}