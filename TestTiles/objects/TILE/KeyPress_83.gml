var buffer_file = buffer_create(400*400*4,buffer_fixed,1);


for(var i = 0; i < 400*400 ; i++ ){
	buffer_write(buffer_file,buffer_u64,Tile[i]);	
}

buffer_save(buffer_file, "savedata.bin");

buffer_delete(buffer_file);





