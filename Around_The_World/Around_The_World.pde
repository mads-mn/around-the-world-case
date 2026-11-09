PShape africa;
PShape africaOutline;
PShape Angola, Burundi, Benin, BurkinaFaso, Botswana, CentralAfricanRep, IveryCoast, Cameroon, DemRepCongo, Congo, Djibouti, Algeria, Egypt, Eritrea, Ethiopia, Gabon, Ghana, Guinea, Gambia, GuineaBissau, EqGuinea, Kenya, Liberia, Libya, Lesotho, Morocco, Mali, Mozambique, Mauritania, Malawi, Namibia, Niger, Nigeria, Rwanda, WSahara, Sudan, SouthSudan, Senegal, SierraLeone, Swaziland, Chad, Togo, Tunisia, Tanzania, Uganda, SouthAfrica, Zambia, Zimbabwe, Somalia;


void setup() {
  size(900, 600);
  africa = loadShape("africa.svg");
  africaOutline = loadShape("africaOutline.svg");
  africa.scale(0.5);
  africaOutline.scale(0.5);
  loadCountries();
}

void draw() {
  shape(africaOutline, 200, 100);
  shape(Uganda, 200, 100);
}
