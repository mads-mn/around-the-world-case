PShape africa;
PShape africaOutline;
PShape[] countries = new PShape[49];

int x = 200;
int y = 50;

void setup() {
  size(900, 600);
  africa = loadShape("africa.svg");
  africaOutline = loadShape("africaOutline.svg");
  africa.scale(0.5);
  africaOutline.scale(0.5);
  loadCountries();
  
  shape(africaOutline, x, y);
  for (int i = 0; i < countries.length; i++) {
    countries[i].disableStyle();
    fill(random(255), random(255), random(255));
    shape(countries[i], x, y);
  }
}

void draw() {
  
}
