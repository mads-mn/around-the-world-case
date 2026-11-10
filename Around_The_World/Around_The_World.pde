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
  africaOutline.disableStyle();
  loadCountries();

  startCountry = int(random(countries.length));
  goalCountry = int(random(countries.length));
  fill(#B29009);
  shape(africaOutline, x, y);
  fill(#408B0B);
  shape(countries[startCountry], x, y);
  fill(#831C09);
  shape(countries[goalCountry], x, y);
}

void draw() {
}
