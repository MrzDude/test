var marker_position = (song_position/song_length)*800;
draw_line(100,100,900,100);
draw_circle(100+marker_position,100,5,false);
draw_text(100,130,$"{song_position} / {song_length} beat: {song_position_beats} translation: {translation}");

draw_circle(100,160,10,true);
draw_circle(100+30,160,10,true);
draw_circle(100+60,160,10,true);
draw_circle(100+90,160,10,true);

if(next_beat == true){
	offset_circle += 30;
	offset_circle = offset_circle % 120;
	next_beat = false;
}

draw_circle(100+offset_circle,160,10,false);

var _x_draw = 100;
var _y_draw = 200;
var _distance_per_beat = 60;
var _line_size = _distance_per_beat * 20;
var _x_center = (_x_draw + _line_size)/2;
var delta_inter_beat = (song_position%secs_per_beat)/secs_per_beat;
var _next_beat_pos = -(_distance_per_beat * delta_inter_beat) + _x_center;

draw_line(_x_draw, _y_draw, _x_draw + _line_size, _y_draw);
draw_line(_x_center,_y_draw-40,_x_center,_y_draw+40);

var _index_start = max(song_position_beats - 8, 0);
var _index_end = min(_index_start + 20, max_beat);
_next_beat_pos -= _distance_per_beat*min(song_position_beats,8);
	

for (var _index = _index_start; _index < _index_end; _index++)
{
	if(abs(mouse_x-_next_beat_pos) < 10 and abs(mouse_y-_y_draw) < 10){
		if(mouse_check_button_pressed(mb_left)){
			beat_map[_index] = 1;	
		}
	}
	draw_line(_next_beat_pos,_y_draw-20,_next_beat_pos,_y_draw+20);
	draw_text(_next_beat_pos-3,_y_draw+20,beat_map[_index]);
	_next_beat_pos+=_distance_per_beat;
}





