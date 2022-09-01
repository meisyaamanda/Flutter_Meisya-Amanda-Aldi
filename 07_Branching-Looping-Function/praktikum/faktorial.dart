import 'dart:io';

void main() {
  double faktorial = 1;
  print("Masukkan Angka : ");
  double n = double.parse(stdin.readLineSync()!);

    for (int i = 1; i <= n; i++){
      faktorial *= i;
    }
    print("Hasil faktorial dari " + n.toString() + " adalah " + faktorial.toString());
}
