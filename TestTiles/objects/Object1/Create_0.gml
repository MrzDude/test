unitsTotal = 2000;
buffer = buffer_create(unitsTotal*4*2,buffer_fixed,1);

unitArray[unitsTotal*2] = 0;
for (var i = 0; i < unitsTotal*2; i++){
	unitArray[unitsTotal*2] = random(1000);
}
repeat(unitsTotal*2){
	buffer_write(buffer,buffer_u32,random(1000));	
}

units[unitsTotal] = 0;
for (var i = 0; i < unitsTotal; i++){
	units[i] = instance_create_layer(x, y, "Instances", unit);
}




