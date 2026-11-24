void drawGameScreen() {
  // Tegner Afrikas outline
  fill(200, 180, 116);
  stroke(115, 75, 38);
  strokeWeight(5);
  shape(africaOutline, x, y);

  //Tegner pergament
  drawPergament(20, 100, 200, 160);
  drawPergament(20, 280, 200, 280);
  drawPergament(width-250, 85, 230, 130);
  for (int i = 0; i < waterBottles && i < 5; i++) {
    drawWaterBottle((width - 220) + i*35, 100, 25, 50);
  }
  if (waterBottles > 5) {
    for (int i = 0; i < waterBottles - 5; i++) {
    drawWaterBottle((width - 220) + i*35, 147, 25, 50);
  }
  }
  

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


void drawWaterBottle(float waterBottleX, float waterBottleY, float w, float h) {
  pushMatrix();

  // Placering
  translate(waterBottleX, waterBottleY);

  // Skalering
  scale(w / 200.0, h / 350.0);

  // Flaskehals
  fill(180, 220, 255);
  stroke(100, 150, 200);
  strokeWeight(2);
  rect(85, 40, 30, 25);

  // Låg
  fill(40, 100, 200);
  rect(82, 25, 36, 18, 5);

  // Overgang
  fill(180, 220, 255);
  rect(78, 60, 44, 15, 5);

  // Flaske
  fill(150, 210, 255, 150);
  rect(50, 75, 100, 220, 20);

  // Vand
  noStroke();
  fill(50, 150, 230, 150);
  rect(53, 180, 94, 112, 15);

  // Lysrefleks
  fill(255, 255, 255, 130);
  rect(65, 95, 10, 160, 5);

  // Etiket
  fill(255);
  rect(52, 135, 96, 40, 5);

  fill(30, 100, 180);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("WATER", 100, 155);
  textAlign(LEFT, BASELINE);

  popMatrix();
}
