void keyTyped() {
  if(key == BACKSPACE){
   if(search.length() > 0){
    search = search.substring(0, search.length() - 1); 
   }
  } else {
  search += key;
  }
  println(search);

}
