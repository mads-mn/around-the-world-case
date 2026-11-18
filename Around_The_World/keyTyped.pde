void keyTyped() {
  // Undersøger om vi har trykket slet, hvis man har det, så undersøger den om tekststrengen er større end 0, hvis den er det, så overskriver den search med en ny kortere version af sig selv (-1)
  if (key == BACKSPACE) {
    if (search.length() > 0) {
      search = search.substring(0, search.length() - 1);
    }
  }
  // Hvis der trykkes enter, køres funktionen der tjekker om der blev søgt på et nyt land
  else if (key == ENTER) {
    addSearchedCountryIndex();
  } 
  // Hvis der bliver trykket på noget anden end backspace og enter, tilføjes karakteren til search
  else {
    search += key;
  }
}
