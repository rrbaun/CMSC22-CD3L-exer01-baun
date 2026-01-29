//used this site https://api.flutter.dev/flutter/dart-core/String/contains.html as reference for the 'contains' function,
//and used this site https://www.kodeco.com/books/dart-apprentice-beyond-the-basics/v1.0/chapters/1-string-manipulation
//as reference for the replaceAll function
void main() {
  String word1 = "rotation";
  String word2 = "tationro";

  print("\nInput:\n\n word 1 = ${word1} \n word 2 = ${word2} \n\nOutput: \n");
  isRotate(toAlpha(word1), toAlpha(word2));
}

String toAlpha(a) {
  String newstring = "";
  String alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (int i=0; i<a.length; i++) {
    if (alphabet.contains(a[i].toLowerCase())) {
      newstring = newstring + a[i].toLowerCase();
    }
  }
  //print (newstring);
  return newstring;
}

void isRotate(a, b) {
  String tocompare = a*2; //concatinates the first string to be compared with the second string; will be used to check if the second string is inside the first string
  if (tocompare.contains(b) && a.length == b.length && a!=b) { //checks if the second string is part of the concatenated first string, but ensures that it isnt the first string itself (only a rotated version of the first string will be considered true)
    print("The given strings are rotations of each other");
  } else {
    print("The given strings are not rotations of each other");
  }
}