playing = true;
BMP = 180;
secs_per_beat = 60/BMP;
song_position = 0;
song_position_beats = 0;
beat_shake = false;
next_beat = false;
offset_circle = 0;
song_id = audio_play_sound(Song1,1000,false);
song_length = audio_sound_length(song_id);
max_beat = int64(song_length/secs_per_beat);
beat_map[max_beat] = 0;
beat_map[1] = 1;
beat_map[10] = 6;
translation = 1;








