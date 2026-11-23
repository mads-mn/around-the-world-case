import java.util.*;

PImage background;
PShape africa;
PShape africaOutline;
PShape[] countryOutlines = new PShape[48];
int movingCloudAmount = 10;

// Afrikas koordinater
int x = 200;
int y = 50;

// Landenes ID'er og navne
ArrayList<String> countryIDs = new ArrayList<String>();

// Hvert lands naboer gemmes som integers
ArrayList<Integer>[] countryInts;

// Søgte lande
ArrayList<Integer> searchedCountryIndexes = new ArrayList<Integer>();

//Moving cloud array
movingCloud[] mClouds = new movingCloud[movingCloudAmount];

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
String search = "";

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


  //Opretter bevægende skyer
  for (int i = 0; i < movingCloudAmount; i++) {
    mClouds[i] = new movingCloud(); //Opretter ny sky
  }
}

void draw() {
  //Tegner baggrunden
  image(background, 0, 0);
  //Opdaterer bevægende skyer
  for (int i = 0; i < movingCloudAmount; i++) {
    noStroke();
    mClouds[i].update();
    mClouds[i].display();
  }
  // Tegner alt det der ses på skærmen
  drawGameScreen();
}
