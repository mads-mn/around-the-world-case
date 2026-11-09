PShape africa;
PShape africaOutline;
PShape[] countries = new PShape[49];

int x = 200;
int y = 50;

int startCountry;
int goalCountry;

void setup() {
  size(900, 600);
  africa = loadShape("africa.svg");
  africaOutline = loadShape("africaOutline.svg");
  africa.scale(0.5);
  africaOutline.scale(0.5);
  loadCountries();

  startCountry = int(random(countries.length));
  goalCountry = int(random(countries.length));

  shape(africaOutline, x, y);
  shape(countries[startCountry], x, y);
  shape(countries[goalCountry], x, y);
}

void draw() {
}
