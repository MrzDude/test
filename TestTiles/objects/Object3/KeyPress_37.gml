var unitsTotals = 2000;
var startT=get_timer();

unitskk[unitsTotals] = 0;
for (var i = 0; i < unitsTotals; i++){
	unitskk[i] = instance_create_layer(x, y, "Instances", unit);
}

var endT=get_timer();
var time_diference=endT-startT;
show_debug_message("time: "+string((time_diference)*0.001)+"ms");