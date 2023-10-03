var value = 0;
var counter = 0;
for(var i = 0; i < 400*400 ; i++ ){
	if(counter == 1){
		value = (value + 1) mod 2;	
		counter = -1;
	}
	Tile[i] = value;
	counter++;
}