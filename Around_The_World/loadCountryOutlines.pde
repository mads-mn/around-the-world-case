void loadCountryOutlines() {
  for (int i = 0; i < countryOutlines.length; i++) {
    countryOutlines[i] = africa.getChild(i+1);
    
    countryOutlines[i].scale(0.5);
    countryOutlines[i].disableStyle();
  }
}
