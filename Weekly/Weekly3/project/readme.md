# Weekly 3
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

## Project
Pada weekly ini saya menambahkan state management pada aplikasi saya. Saya menggunakan state management provider. 

```
showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Container(
                            child: AlertContact(
                              nama : namaController,
                              email: emailController,
                              pesan: pesanController,
                            ),
                          ),
                        ),
                      );
```
Pada potongan kode diatas merupakan alert dialog yang digunakan untuk mengkonfirmasi apakah kontak yang dimasukan sudah benar atau belum. Jika data yang dimasukkan sudah benar maka data tersebut akan ditampilkan di menu data user.
```
class DataUserProvider extends ChangeNotifier{
  final List<UserModel> _users = [];

  List<UserModel> get user => List.unmodifiable(_users);

  void tambahData(UserModel userModel){
    _users.add(userModel);
    notifyListeners();
  }
}
```
Pad potongan kode diatas merupakan potongan kode untuk membuat provider pada data user.
```
Widget buildDataUser(){
  return Consumer<DataUserProvider>(builder: (context, manager, child){
    if(manager.user.isNotEmpty){
      return DataUserList(
        dataUser : manager,
      );
    } else{
      return EmptyPage();
    }
  });
}
```
Pada potongan kode diatas digunakan jika ada perubahan pada halaman tersebut.
```
class UserModel{
  String nama;
  String email;
  String pesan;

  UserModel({
    required this.nama, required this.email, required this.pesan
  });
}
```
Kode diatas merupakan model untuk user yang berisi nama, email dan pesan.
```
    return ChangeNotifierProvider(
      create: (context) => DataUserProvider(),
```
Potongan kode diatas digunakan untuk mendeklarasikan variabel.