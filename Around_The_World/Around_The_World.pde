import java.util.*;

PImage background;
PImage deathScreen;

PShape africa;
PShape africaOutline;
PShape[] countryOutlines = new PShape[48];

PFont deathFont;

// Afrikas koordinater
int x = 200;
int y = 50;

// Landenes ID'er og navne
ArrayList<String> countryIDs = new ArrayList<String>();

// Hvert lands naboer gemmes som integers
ArrayList<Integer>[] countryInts;

// Søgte lande
ArrayList<Integer> searchedCountryIndexes = new ArrayList<Integer>();

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
int waterBottles;
boolean gameActive = true;

void setup() {
  size(900, 600);

  deathFont = createFont("DeathRock.ttf", 40);

  //Opretter svg filerne som shapes
  background = loadImage("savannaBackground.png");
  deathScreen = loadImage("savannaBackgroundSH.png");
  africa = loadShape("africa.svg");
  africaOutline = loadShape("africaOutline.svg");
  //Resizer og skalerer shapes & images
  background.resize(width, height);
  deathScreen.resize(width, height);
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
  if(waterBottles < 1){
   gameActive = false; 
  }
  
  if (gameActive == true) {
    // Tegner alt det der ses på skærmen
    drawGameScreen();
  } else {
    image(deathScreen, 0, 0);

    pushStyle();
    textFont(deathFont);
    textSize(100);
    fill(#E0E0E0);
    textAlign(CENTER, CENTER);
    text("Du døde af tørst", width/2, height/2-200);
    popStyle();

    pushStyle();
    textSize(20);
    fill(#E0E0E0);
    textAlign(CENTER, CENTER);
    text("Klik på R for at starte et nyt spil", width/2, height/2-100);
    popStyle();
  }
}
