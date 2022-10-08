# (23) Flutter Animation
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

### Task
#### Task 01
Pada task 1 saya menampilkann gambar dengan ukuran kecil dengan posisi di tengah. Lalu, jika gambarnya di klik maka gambar akan membesar dan di klik kembali gambar mengecil.
```
Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isBig = !isBig;
            });
          },
```
Pada potongan kode diatas, center digunakan untuk meletakkan gambar berada di posisi tengah. GesturDetector digunakan untuk memberikan respon kepada gambar jika gambar di klik atau di tekan.
```
child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            width: isBig ? 500 : 250,
            height: isBig ? 500 : 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/id/1015/6000/4000'),
              ),
            ),
          ),
```
Pada potongan kode diatas, animated container digunakan untuk memberikan animasi pada gambar yang ingin ditampilkan. disini saya mengambil gambar dari internet. untuk durasi perubahan gambar jika di klik 2 second.

Hasil
![gambar](/23_Flutter%20Animation/screenshots/hasil.gif)

#### Task 02
Pada task 02 saya memberikan transisi pada tugas membuat contact.
```
Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
              return const NewContact();
            }, transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
              final tween = Tween(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              );
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            }),
          );
```
Pada potongan kode diatas saya memberikan transisi pada floating button. jika button tersebut di klik maka ia akan memberika transisi ke halaman selanjutnya.
![gambar2](/23_Flutter%20Animation/screenshots/hasil2.gif)