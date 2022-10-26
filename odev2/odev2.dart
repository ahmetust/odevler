import 'dart:io';

void main() {
  var a, b, c;
  print("ilk sayiyi giriniz");
  a = int.parse(stdin.readLineSync()!);
  print("ikinci sayiyi giriniz");
  b = int.parse(stdin.readLineSync()!);

  String selection = '''
Toplama yapmak icin 1 giriniz
Cikartma yapmak icin 2 giriniz
carpma yapmak icin 3 giriniz
bölme yapmak icin 4 giriniz 
''';
  print(selection);
  c = int.parse(stdin.readLineSync()!);

  if (c == 1) {
    print('sonuc:  $a + $b = ${a + b}');
  } else if (c == 2) {
    print('sonuc:  $a - $b = ${a - b}');
  } else if (c == 3) {
    print('sonuc:  $a x $b = ${a * b}');
  } else if (c == 4) {
    print('sonuc:  $a / $b = ${a / b}');
  } else {
    print('lutfen gecerli bir islem giriniz');
  }
}
