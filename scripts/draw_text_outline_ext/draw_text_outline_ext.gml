/// @desc draw_text_outline_ext(x, y, text, sep, w, outline_color);
///@arg x
///@arg y
///@arg text
///@arg sep
///@arg w
///@arg outline_color


var x1 = argument[0],
  y1 = argument[1],
  text = argument[2];
  var c1 = c_black;

var c2 = draw_get_colour();

if (argument_count >= 6)
{
  c1 = argument[5];
}

draw_set_color(c1);

draw_text_ext(x1 - 1, y1 - 1, text,argument[3],argument[4]);
draw_text_ext(x1, y1 - 1, text,argument[3],argument[4]);
draw_text_ext(x1 + 1, y1 - 1, text,argument[3],argument[4]);
draw_text_ext(x1 - 1, y1, text,argument[3],argument[4]);
draw_text_ext(x1 + 1, y1, text,argument[3],argument[4]);
draw_text_ext(x1 - 1, y1 + 1, text,argument[3],argument[4]);
draw_text_ext(x1, y1 + 1, text,argument[3],argument[4]);
draw_text_ext(x1 + 1, y1 + 1, text,argument[3],argument[4]);

draw_set_color(c2);

draw_text_ext(x1, y1, text,argument[3],argument[4]);