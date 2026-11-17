void loadCountries() {

  // Hent alle landenes ID'er
  for (Object id : countries.keys()) {
    println(id);
    countryIDs.add((String) id);
  }

  // Sorter alfabetisk, så indexene er stabile
  Collections.sort(countryIDs);
  
  printArray(countryIDs);

  // Opret array med en naboliste til hvert land
  countryInts = new ArrayList[countryIDs.size()];

  for (int i = 0; i < countryIDs.size(); i++) {

    String id = countryIDs.get(i);

    JSONArray naboer = neighbors.getJSONArray(id);

    countryInts[i] = new ArrayList<Integer>();

    for (int j = 0; j < naboer.size(); j++) {

      String naboID = naboer.getString(j);

      // Find naboens index
      int naboIndex = countryIDs.indexOf(naboID);

      if (naboIndex != -1) {
        countryInts[i].add(naboIndex);
      }
    }
  }
}
