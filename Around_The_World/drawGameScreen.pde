void drawGameScreen() {
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
  
  // Tegner søgte lande
  fill(#AAAA02);
  for (int i = 0; i < searchedCountryIndexes.size(); i++) {
    shape(countryOutlines[searchedCountryIndexes.get(i)], x, y);
  }
  
  //Skriver titlen på spillet
  pushMatrix();
  rotate(radians(-12));
  textSize(36);
  //Skyggen
  fill(60, 40, 20);
  text("Tørstige Grænser", -3, 88);
  //Selve titlen
  fill(#F4C542);
  text("Tørstige Grænser", 0, 90);

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
