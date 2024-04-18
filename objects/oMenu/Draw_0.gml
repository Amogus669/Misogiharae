draw_sprite_stretched(sBox, 0, x, y, widthFull, heightFull)
draw_set_color(c_white);
draw_set_font(fnM5x7);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
var _scrollPush = max(0, hover - (visibleOptionMax-1));

for (l = 0; l < (visibleOptionsMax + _desc); l++)
{
