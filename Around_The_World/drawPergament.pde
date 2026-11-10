
void drawPergament(float x, float y, float w, float h) {
  pushMatrix();
  translate(x, y);
  scale(w / 300.0, h / 180.0);

  // Skygge
  noStroke();
  fill(50, 30, 15, 100);
  beginShape();
  vertex(8, 12);
  bezierVertex(35, 3, 70, 10, 105, 6);
  bezierVertex(170, 10, 230, 2, 290, 9);
  bezierVertex(300, 30, 294, 55, 299, 85);
  bezierVertex(294, 120, 302, 150, 288, 171);
  bezierVertex(220, 177, 160, 170, 100, 176);
  bezierVertex(55, 171, 25, 180, 7, 168);
  bezierVertex(0, 130, 7, 100, 3, 75);
  bezierVertex(8, 45, 0, 25, 8, 12);
  endShape(CLOSE);

  // Selve papiret
  fill(235, 205, 151);
  stroke(115, 75, 38);
  strokeWeight(2.5);

  beginShape();
  vertex(8, 7);
  bezierVertex(40, 0, 70, 8, 105, 4);
  bezierVertex(170, 8, 230, 0, 290, 6);
  bezierVertex(300, 25, 293, 55, 298, 85);
  bezierVertex(293, 120, 301, 150, 287, 170);
  bezierVertex(220, 175, 160, 168, 100, 174);
  bezierVertex(55, 169, 25, 177, 7, 166);
  bezierVertex(0, 130, 7, 100, 3, 75);
  bezierVertex(8, 45, 0, 25, 8, 7);
  endShape(CLOSE);

  // Indre dekorativ kant
  noFill();
  stroke(177, 132, 75, 130);
  strokeWeight(1.2);

  beginShape();
  vertex(17, 17);
  bezierVertex(70, 12, 220, 12, 283, 16);
  bezierVertex(287, 65, 286, 120, 280, 159);
  bezierVertex(210, 164, 90, 163, 18, 157);
  bezierVertex(14, 110, 14, 60, 17, 17);
  endShape();

  popMatrix();
}
