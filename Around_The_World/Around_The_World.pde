PImage background;
PShape africa;
PShape africaOutline;
PShape[] countries = new PShape[49];

int x = 200;
int y = 50;

int startCountry;
int goalCountry;

void setup() {
  size(900, 600);
  background = loadImage("savannaBackground.png");
  africa = loadShape("africa.svg");
  africaOutline = loadShape("africaOutline.svg");
  background.resize(width, height);
  africa.scale(0.5);
  africaOutline.scale(0.5);
  africaOutline.disableStyle();
  loadCountries();

  startCountry = int(random(countries.length));
  goalCountry = int(random(countries.length));

  image(background, 0, 0);
  fill(#B29009);
  shape(africaOutline, x, y);
  fill(#408B0B);
  shape(countries[startCountry], x, y);
  fill(#831C09);
  shape(countries[goalCountry], x, y);
}

void draw() {
  // x, y, bredde, højde
  drawPergament(20, 100, 200, 160);

  drawPergament(20, 280, 200, 250);

}
