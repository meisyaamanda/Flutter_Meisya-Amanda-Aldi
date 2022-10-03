# (19) Dialog Bottom Sheet
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

### Task
#### task 01
Membuat gallery dan menampilkan gambar - gambar 
```
List<String> _gambar = [
    'https://picsum.photos/id/1006/367/267',
    'https://picsum.photos/id/1012/367/267',
    'https://picsum.photos/id/1008/367/267',
    'https://picsum.photos/id/100/367/267',
    'https://picsum.photos/id/1015/367/267',
    'https://picsum.photos/id/1021/367/267',
    'https://picsum.photos/id/1022/367/267',
    'https://picsum.photos/id/101/367/267',
  ];
```
List diatas merupakan list gambar yang didapat dari internet.

#### Task 02
Membuat bottom sheet
```
onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            DialogGambar(image: _gambar[index]));
                  }
```
Potongan kode diatas digunakan untuk menampilkan bottom sheet. saya menggunakan ontap yang berisi showmodalbottomsheet. jika gambar di klik 1 kali maka akan muncul gambar tersebut.

#### task 03
Alert Dialog
```
onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          'Konfirmasi Gambar',
                          style: TextStyle(fontSize: 16),
                        ),
                        content: DialogGambar(image: _gambar[index]),
                      ),
                    );
                  },
```
Potongan kode diatas digunakan untu menampilkan alert dialog. saya menggunakan double tap yang berisi show dialog dengan builder alert dialog. untuk tampilan alert dialog saya beri judul konfimasi gambar dengan content gambar yang ada di list. jika di klik 2 kali maka alert dialog akan muncul.
