PShape afrika;


void setup(){
  size(900, 600);
  afrika = loadShape("africa.svg");
  afrika.scale(0.5);
  
  loadCountries();
}

void draw(){
  shape(afrika, 200, 100);
}
