# Weekly 2
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

## Project
Membuat tampilan home.

#### Widget Sidebar
```
Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.contact_support),
            title: Text('Contact Us'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
          ),ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
          ),
        ],
      ),
    );
```
Pada sidebar atau drawer menggunakan list tile untuk menampilkan icon dan judul. untuk icon menggunakan leading dan untuk title mengisi nama.

### Widget About
```
  final String image;
  final String judul;
  final String teks;
```
digunakan untuk memanggil gambar, judul dan teks yang ditampilkan.
```
Container(
            width: 140,
            height: 140,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
```
Digunakan untuk memanggil gambar yang ingin ditampilkan
```
Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                 teks,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
```
Dan ini digunakan untuk memanggil judul dan text

#### Widget About Section
```
Row(
            children: [
              About(
                  image: 'asset/image/mesincuci.png',
                  judul: 'Mesin Cuci',
                  teks:
                      'Layanan mesin cuci yang menyediakan berbagai macam mesin cuci.'),
              const SizedBox(
                width: 28,
              ),
              About(
                  image: 'asset/image/interior.png',
                  judul: 'Interior Laundry',
                  teks: 'Melayani pembuatan interior laundry.'),
            ],
          ),
```
Salah satu baris untuk menampilkan gambar dan deskripsi untuk layanan yang disediakan.