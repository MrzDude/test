
var startT=get_timer();
/*
for (var i = 0; i < unitsTotal*2; i++){
	var number = unitArray[i]
}*/
for (var i = 0; i < unitsTotal; i+=2){
	units[i].x = unitArray[i]
	units[i+1].y = unitArray[i+1];
}

var endT=get_timer();
var time_diference=endT-startT;
show_debug_message("time: "+string((time_diference)*0.001)+"ms");