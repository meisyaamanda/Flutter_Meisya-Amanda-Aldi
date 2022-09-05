import 'dart:io';
//task 1
void main() async{
 List data = [];
 stdout.write("Masukkan data list = ");
 int? datalist = int.tryParse(stdin.readLineSync()!);
 for (int i=1; i<=datalist!;i++){
  stdout.write("Masukkan data ke $i = ");
  int? tambahData = int.tryParse(stdin.readLineSync()!);
  data.add(tambahData);
 }
 stdout.write('Masukkan angka pengali = ');
 int? pengali = int.tryParse(stdin.readLineSync()!);

 print('Angka yang ada didalam data = $data');

 List hasil = await returnList(data, pengali!);
 print('Hasil data setelah dikali $pengali adalah $hasil');
}

Future<List> returnList(List data, int kali){
  Future((){
    for (int j=0;j<data.length;j++){
      data[j] = data[j]*kali;
    }
  });
  return Future.delayed(Duration(seconds: 3),(){
    return data;
  });
}