void findAllPossiblePairs() {

  pairsPerDistance = new ArrayList[maxBorders + 1];

  // Opret en liste til hver mulig distance
  for (int i = minBorders; i <= maxBorders; i++) {
    pairsPerDistance[i] = new ArrayList<int[]>();
  }

  // Undersøg alle landekombinationer
  for (int i = 0; i < countryIDs.size(); i++) {

    for (int j = i + 1; j < countryIDs.size(); j++) {

      int distance = findDistance(i, j);

      if (distance >= minBorders &&
          distance <= maxBorders) {

        pairsPerDistance[distance].add(new int[] {i, j});
      }
    }
  }

  // Find de distancer, hvor der findes mulige par
  for (int i = minBorders; i <= maxBorders; i++) {

    if (pairsPerDistance[i].size() > 0) {
      possibleBorderAmounts.add(i);
    }
  }
}
