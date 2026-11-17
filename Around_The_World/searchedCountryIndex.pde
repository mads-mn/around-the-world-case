int searchedCountryIndex() {
  for (int i = 0; i < countryIDs.size(); i++) {

    String countryName = countries.getString(countryIDs.get(i));

    if (search.equalsIgnoreCase(countryName)) {
      
      println(countryName);
      // Gem landet som jeres valgte land
      return i;
    }
  }
  return -1;
}
