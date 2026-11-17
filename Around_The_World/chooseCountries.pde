void chooseCountries() {

  if (possibleBorderAmounts.size() == 0) {
    println("Ingen mulige landekombinationer!");
    return;
  }

  // Vælg et tilfældigt antal grænser
  int numberIndex = (int) random(possibleBorderAmounts.size());

  borderAmount = possibleBorderAmounts.get(numberIndex);

  // Hent alle par med dette antal grænser
  ArrayList<int[]> possiblePairs = pairsPerDistance[borderAmount];

  // Vælg et tilfældigt par
  int pairIndex = (int) random(possiblePairs.size());

  int[] chosenPair = possiblePairs.get(pairIndex);

  // Gem startland og målland
  startCountry = chosenPair[0];
  goalCountry = chosenPair[1];

  // Vis resultatet i konsollen
  println("--------------------------");

  println("Antal grænser: " + borderAmount);

  println("Startland: " +
    countries.getString(countryIDs.get(startCountry)));

  println("Målland: " +
    countries.getString(countryIDs.get(goalCountry)));

  println("--------------------------");
}
