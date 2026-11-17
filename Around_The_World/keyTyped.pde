void keyTyped() {
  if (key == BACKSPACE) {
    if (search.length() > 0) {
      search = search.substring(0, search.length() - 1);
    }
  } else if (key == ENTER) {
    println(searchedCountryIndex());
    searchedCountryIndexes.add(searchedCountryIndex());
  } else {
    search += key;
  }
  println(search);
}
