import java.util.*;

PImage background;
PShape africa;
PShape africaOutline;
PShape[] countryOutlines = new PShape[48];

// Afrikas koordinater
int x = 200;
int y = 50;

// Landenes ID'er og navne
ArrayList<String> countryIDs = new ArrayList<String>();

// Hvert lands naboer gemmes som integers
ArrayList<Integer>[] countryInts;

// Start- og målland
int startCountry;
int goalCountry;

// Antal grænser
int borderAmount;
int minBorders = 4;
int maxBorders = 8;

// JSON
JSONObject data;
JSONObject countries;
JSONObject neighbors;

// Alle mulige landekombinationer fordelt efter afstand
ArrayList<int[]>[] pairsPerDistance;

// Afstande, der rent faktisk har mulige landekombinationer
ArrayList<Integer> possibleBorderAmounts = new ArrayList<Integer>();

// String til det land der søges på:
String search;

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
  loadCountryOutlines();

 /* //Vælger tilfældig land som start og mål
  startCountry = int(random(countryOutlines.length));
  goalCountry = int(random(countryOutlines.length));
  */
  
  // Indlæs JSON
  data = loadJSONObject("africaNeighbours.json");

  countries = data.getJSONObject("countries");
  neighbors = data.getJSONObject("neighbors");
  
  // Indlæs landene
  loadCountries();

  // Find alle mulige kombinationer
  findAllPossiblePairs();

  // Vælg de første to lande
  chooseCountries();

  //Tegner baggrunden
  image(background, 0, 0);
}

void draw() {
  // Tegner Afrikas outline
  fill(200, 180, 116);
  stroke(115, 75, 38);
  strokeWeight(5);
  shape(africaOutline, x, y);

  //Tegner startland og målland
  stroke(0);
  strokeWeight(3);
  fill(#408B0B);
  shape(countryOutlines[startCountry], x, y);
  fill(#831C09);
  shape(countryOutlines[goalCountry], x, y);
  
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
  text(countries.getString(countryIDs.get(startCountry)), 35, 155);
  fill(#831C09);
  text(countries.getString(countryIDs.get(goalCountry)), 35, 205);
  
  drawSearchBar(width-250, 20);
}
