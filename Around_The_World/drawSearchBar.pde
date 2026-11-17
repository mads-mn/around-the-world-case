void drawSearchBar(float searchBarX, float searchBarY) {
  pushMatrix();
  translate(searchBarX, searchBarY);
  drawPergament(0, 0, 230, 40);
  
  stroke(115, 75, 38);
  line(23, 16, 35, 28);
  
  fill(235, 205, 151);
  strokeWeight(1);
  circle(23, 16, 15);
  
  fill(#9ED1FC, 80);
  circle(23, 16, 15);
  
  fill(0);
  text(search, 40, 25);
  popMatrix();
}
