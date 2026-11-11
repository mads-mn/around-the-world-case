PImage background;
PShape africa;
PShape africaOutline;
PShape[] countries = new PShape[48];
String[] countriesName = {
  "Angola", "Burundi", "Benin", "Burkina Faso", "Botswana",
  "Central African Rep", "Côte d Ivoire", "Cameroon", "Democratic Rep Congo",
  "Congo", "Djibouti", "Algeria", "Egypt", "Eritrea", "Ethiopia",
  "Gabon", "Ghana", "Guinea", "Gambia", "Guinea Bissau",
  "Equatorial Guinea", "Kenya", "Liberia", "Libya", "Lesotho", "Morocco",
  "Mali", "Mozambique", "Mauritania", "Malawi",
  "Namibia", "Niger", "Nigeria", "Rwanda", "Sudan", "South Sudan",
  "Senegal", "Sierra Leone", "Swaziland", "Chad", "Togo",
  "Tunisia", "Tanzania", "Uganda", "South Africa", "Zambia",
  "Zimbabwe", "Somalia"
};
int x = 200;
int y = 50;

int startCountry;
int goalCountry;

void setup() {
  size(900, 600);
  //Opretter svg filerne som shapes
  background = loadImage("savannaBackground.png");
  africa = loadShape("africa.svg");
  africaOutline = loadShape("africaOutline.svg");
  //Resizer og skalerer shapes & images
  background.resize(width, height);
  africa.scale(0.5);
  africaOutline.scale(0.5);
  africaOutline.disableStyle();
  loadCountries();

  //Vælger tilfældig land som start og mål
  startCountry = int(random(countries.length));
  goalCountry = int(random(countries.length));

  //Tegner baggrunden & Afrikas outline
  image(background, 0, 0);
  fill(200, 180, 116);
  stroke(115, 75, 38);
  strokeWeight(5);
  shape(africaOutline, x, y);

  //Tegner startland og målland
  stroke(0);
  strokeWeight(3);
  fill(#408B0B);
  shape(countries[startCountry], x, y);
  fill(#831C09);
  shape(countries[goalCountry], x, y);
}

void draw() {
  //Skriver titlen på spillet
  pushMatrix();
  rotate(radians(-12));
  textSize(36);
  //Skyggen
  fill(60, 40, 20);
  text("Sultne Grænser", -3, 86);
  //Selve titlen
  fill(#F4C542);
  text("Sultne Grænser", 0, 90);

  popMatrix();

  //Tegner pergament
  drawPergament(20, 100, 200, 160);
  drawPergament(20, 280, 200, 250);

  //Skriver startland og målland
  fill(0);
  textSize(18);
  text("Startland:", 35, 135);
  text("Målland:", 35, 185);
  fill(#408B0B);
  text(countriesName[startCountry-1], 35, 155);
  fill(#831C09);
  text(countriesName[goalCountry-1], 35, 205);
}
