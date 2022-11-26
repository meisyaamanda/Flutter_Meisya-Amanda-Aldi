# (23) Storage
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

## Task
1. Membuat halaman login dan home menggunakan provider
Untuk halaman login berisi 4 input data yaitu nama, email, no hp dan password. 
```
class DataProvider extends ChangeNotifier {
  late SharedPreferences logindata;
  String nama = '';
  String email = '';

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    nama = logindata.getString('nama').toString();
    email = logindata.getString('email').toString();
    notifyListeners();
  }
}
```
Pada kode diatas merupakan provider dengan nama DataProvider pada halaman home. Nama dan email yang akan ditampilkan pada home diambil dari inputan login.
```
Consumer<DataProvider>(
                builder: (context, dataProvider, _) {
                  return Text(dataProvider.nama);
                },
              ),
```
Pada potongan kode diatas bahwa jika dilakukannya perubahan data maka ia akan mengubah data tersebut, begitupun untuk email,
```
ElevatedButton(
                onPressed: () {
                  dataProvider.logindata.setBool('login', true);
                  dataProvider.logindata.remove('nama');
                  dataProvider.logindata.remove('email');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text('logout'),
              ),
```
Kode diatas digunakan untuk button logout yang jika di klik maka ia akan menhilangkan data nama dan email.

2. Membuat halaman login dan home menggunakan bloc.
Pada bloc saya menggunakan shared preference untuk menyimpan data local. Pada folder bloc ada data_login_bloc, data_login_event dan data_login_state.