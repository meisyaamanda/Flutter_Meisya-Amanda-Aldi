# (20) Flutter Navigation
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

### Task
Membuat navigasi
```
initialRoute: '/',
      routes: {
        '/':(_) => HomePage(),
        '/TambahKontak': (_) => NewContact(),
      },
```
potongan kode diatas digunakan untuk mendaftarkan routesnya.
```
onPressed: () {
          Navigator.of(context).pushNamed('/TambahKontak');
        },
```
potongan kode diatas digunakan untuk menampilkan halaman selanjutnya dengan menggunakan perintah navigator.push.
```
onPressed: () {
                      setState(() {
                        ListData.add(DataContact(
                            nama: NamaController.text,
                            notelp: NotelpController.text));
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
```
potongan kode diatas digunakan untuk menambahkan tambahan kontak baru yang akan ditampilkan di list. setState digunakan untuk menambah data kedalam list. navigator .push digunakan untuk menampilkan halaman list.
