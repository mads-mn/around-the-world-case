// Funktionen tjekker om der søges på et nyt land, ved hvilket den tilføjer landets index til en liste
void addSearchedCountryIndex() {
  // Løkken kører igennem listen med alle lande
  for (int i = 0; i < countryIDs.size(); i++) {

    String countryName = countries.getString(countryIDs.get(i));

    // Her tjekkes om landets navn er det samme som ordet der er skrevet i søgefeltet
    if (search.equalsIgnoreCase(countryName)) {
      search = "";
      // I denne løkke køres igennem listen med allerede gemte lande
      for (int j = 0; j < searchedCountryIndexes.size(); j++) {

        // Her tjekkes der om landet der blev søgt på allerede er søgt på tidligere
        if (i == searchedCountryIndexes.get(j)) {

          // Hvis dette er tilfældet, afsluttes funktionen uden at gemme indexet for det søgte land
          return;
        }
      }

      // Gem indexet til listen med lande der er søgt på
      searchedCountryIndexes.add(i);
      waterBottles--;
    }
  }
}
