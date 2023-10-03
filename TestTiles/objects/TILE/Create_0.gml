Tile[400*400] = 0;

data_buffer = buffer_create(400*400*8,buffer_fixed,1);

buffer_load_partial(data_buffer, "savedata.bin", 0, 400*400*4, 0);

for(var i = 0; i < 400*400 ; i++ ){
	Tile[i] = buffer_read(data_buffer,buffer_u64);
}

buffer_delete(data_buffer);


Sprites[2] = 0;

Sprites[0] = Tile_Grey;
Sprites[1] = Tile_Black;

tile_value = 1;
