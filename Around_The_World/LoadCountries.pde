void loadCountries() {
  for (int i = 0; i < countries.length; i++) {
    countries[i] = africa.getChild(i);
    
    countries[i].scale(0.5);
  }
}
