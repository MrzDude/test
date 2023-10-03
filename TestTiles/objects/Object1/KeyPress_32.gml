buffer_seek(buffer, buffer_seek_start, 0);
var startT=get_timer();

/*
repeat(unitsTotal*2){
	var number = buffer_read(buffer,buffer_u32);	
}*/
for (var i = 0; i < unitsTotal; i++){
	units[i].x = buffer_read(buffer,buffer_u32);
	units[i].y = buffer_read(buffer,buffer_u32);
}

var endT=get_timer();
var time_diference=endT-startT;
show_debug_message("time: "+string((time_diference)*0.001)+"ms");