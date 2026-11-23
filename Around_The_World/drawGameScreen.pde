void drawGameScreen() {
  // Tegner Afrikas outline
  fill(200, 180, 116);
  stroke(115, 75, 38);
  strokeWeight(5);
  shape(africaOutline, x, y);

  //Tegner pergament
  drawPergament(20, 100, 200, 160);
  drawPergament(20, 280, 200, 250);
  
  //Tegner startland og målland
  stroke(0);
  strokeWeight(3);
  fill(#408B0B);
  shape(countryOutlines[startCountry], x, y);
  fill(#831C09);
  shape(countryOutlines[goalCountry], x, y);
  
  // Tegner søgte lande
  for (int i = 0; i < searchedCountryIndexes.size(); i++) {
    fill(#AAAA02);
    shape(countryOutlines[searchedCountryIndexes.get(i)], x, y);
    fill(0);
    //Skriver ruten
    text(countries.getString(countryIDs.get(searchedCountryIndexes.get(i))), 35, 320+i*25);
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
