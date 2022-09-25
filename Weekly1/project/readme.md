# (01) Weekly 1 
## Data Diri

Nomor Urut: 1_018FLB_40 
Nama : Meisya Amanda Aldi

## Project
Pada project ini saya membuat aplikasi d mesin laundry dan interior.
### Project 01
```
  appBar: AppBar(
        title: Text(
          'DMLI',
          style: whiteTextStyle.copyWith(
              fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
```
Pada penggalan code diatas menunjukan bahwa untuk pembuatan appbar terdiri dari title untuk memberikan judul halaman, lalu pada style terdapat whitetextstyle. whitetextstyle ini didapatkan dari saya membuat file theme yang berisi warna dan font yang digunakan untuk pembuatan aplikasi.

```
SingleChildScrollView(
        child: Column(
          children: [
            Tujuan(),
            Contact(nama: nama, email: email, pesan: pesan),
          ],
        ),
      ),
```
Penggalan code diatas digunakan untuk menampilkan apa saja yang ingin di tampilkan pada home. **Singlechildscrollview** digunakan agar layar dapat di scroll dan menampilkan informasi pada 1 layar. Lalu **Column** digunakan untuk membuat tampilan secara vertikal. pada column terdapat widget tujuan dan widget contact.

#### Widget Tujuan
```
Container(
    height: MediaQuery.of(context).size.height * 0.35,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        image: DecorationImage(
        colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.7), BlendMode.darken),
            image: AssetImage('asset/image/laundry.jpeg'),
             fit: BoxFit.cover),
          ),
        ),
```
Pada widget tujuan terdiri dari gambar dan text. untuk gambar digunakan sebagai background dengan ukuran yang sudah diatur pada widget container. pada container terdiri dari decoration yang berisi image dengan image yang diambil dari asset yang sudah di tambahkan. agar tulisan lebih terlihat maka tambahkan opacity pada gambar dan agar gambar sesuai dengan ukuran layar maka tambahkan boxfit cover.
```
Text(
    'D Mesin Laundry dan Interior atau disingkat DMLI merupakan salah satu usaha yang menyediakan perlengkapan laundry. DMLI juga menyediakan layanan pembuatan interior laundry untuk memperindah toko laundry anda.',
  style: whiteTextStyle,
  textAlign: TextAlign.center,
      ),
```
Penggalan diatas merupakan contoh implementasi widget text. pada widget text berisi text tersendiri lalu style digunakan untuk memberikan warna pada text dan textalign untuk memposisikan letak text.

#### Widget Contact
 Pada widget contact berbentuk form yang terdiri dari nama, email, pesan. 
 ```
  Text(
      'Nama',
    style: blackTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
      ),
    ),
    TextFormField(
      controller: nama,
      decoration: InputDecoration(
          hintText: 'Masukkan Nama',
            ),
      validator: (value) {
      if (value!.isEmpty) {
          return 'Nama Tidak Boleh Kosong';
        }
          return null;
        },
    ),
```
Pada penggalan kode diatas berisi form. Jenis form yang digunakan yaitu textfoormfield. Textformfield berisi controller untuk menyimpan data yang pengguna inputkan, decoration yang berisi hint text. hint text ini hanya menampilkan sementara yang berguna untuk memberikan informasi kepada pengguna data apa yang dimasukkan. lalu property yang berisi jika nama kosong maka akan muncul peringatan bahwa nama tidak boleh kosong. begitupun untuk email dan pesan.
```
Container(
          height: 40,
          width: 100,
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
            onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text('Submit',style: whiteTextStyle.copyWith(fontSize: 16)),
                ),
              ),
```
Pada penggalan kode diatas merupakan contoh penggunaan elevated button. agar button lebih besar maka digunakan **elevatedbdutton.style** yang berisi shape yaitu bentuk button dengan radios 20. lalu onpressed digunakan untuk mengklik button. 