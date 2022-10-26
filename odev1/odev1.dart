import 'dart:io';

void main() {
  var i;
  List<int> arr = [];

  for (i = 0; i <= 9; i++) {
    //10 adet input alma
    print("sayi giriniz: ");
    int? n = int.parse(stdin.readLineSync()!);
    arr.add(n); //diziye ekleme
  }

  print("Dizi: $arr");
  arr.sort();
  print("Küçükten büyüğe dizi: $arr"); //sıralama
  print("Büyükten küçüğe dizi: ${arr.reversed}"); //tersten sıralama
}
