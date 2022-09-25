# Weekly 1
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

## Project
Membuat tampilan home.
### Project 01

#### Widget Home Page
```
appBar: AppBar(
        title: Text(
          'DMLI',
          style: whiteTextStyle.copyWith(
              fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Tujuan(),
            Contact(nama: nama, email: email, pesan: pesan),
          ],
        ),
      ),
```
Pada tampilan home yang terdiri dari appbar dan body. Untuk appbar berisi text yang bernama DMLI dengan style font berwarna putih, dengan ukuran 25 dan tulisan tebal. whitetextstyle didapatkan dari file theme.dart. untuk body berisi widget tujuan dan contact. Tampilan nantinya akan ditampilkan secara vertikal, oleh karena itu saya menggunakan column. SingleChildScrollView berguna agar layar bisa di scroll.

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
        Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'D Mesin Laundry dan Interior atau disingkat DMLI merupakan salah satu usaha yang menyediakan perlengkapan laundry. DMLI juga menyediakan layanan pembuatan interior laundry untuk memperindah toko laundry anda.',
              style: whiteTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
```
Pada widget tujuan terdiri dari widget image dan text. Widget image digunakan untuk menampilkan gambar yang sudah disimpan didalam folder asset yang berguna sebagai latar belakang text. gambar dibuat menjadi sedikit gelap agar text dapat terlihat. Lalu terdapat juga widget text yang berguna untuk menampilkan text. text nantinya akan tampil dengan posisi tulisan berada di tengah.


#### Widget Contact
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
Untuk widget contact menggunakan form untuk menginput data. disini saya menggunakan textformfield untuk membuat form yang berisi controller untuk menyimpan data. hnt text digunakan untuk memberitahukan data yang dimasukkan. property validator digunakan memberikan peringatan bahwa form tidak boleh kosong.

#### Elevated Button
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
Pada elevated button terdapat container yang berguna untuk mengatur besar button lalu onpressed digunakan untuk memanggil kembali. jika kita klik button dengan nama submit namun belum mengisi form maka akan menampilkan peringatan bahwa form kosong.
