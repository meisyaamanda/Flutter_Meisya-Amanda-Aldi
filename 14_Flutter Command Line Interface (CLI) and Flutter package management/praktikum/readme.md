# (14) Flutter CLI and Flutter Package Management
## Data Diri
Nomor Urut: 1_018FLB_40

Nama : Meisya Amanda Aldi

## Task

### Task 01
Pada task 01 menambahkan packages badges dari pub dev. pertama - tama tambahkan packages badge dengan perintah flutter pub add nama_package. 
![add](/14_Flutter%20Command%20Line%20Interface%20(CLI)%20and%20Flutter%20package%20management/screenshots/pubdev1.png)
setelah menambahkan packages langkah selanjutnya yaitu mengimport packages badge 
![importbadges](/14_Flutter%20Command%20Line%20Interface%20(CLI)%20and%20Flutter%20package%20management/screenshots/import_badges.png)
jika sudah mengimport packages badges selanjutnya membuat source code dengan widget statefull. untuk menampilkan badge pada body saya menampilkan button berada di tengan dengan menggunakan widget **center**. pada widget center berisi widget **column** agar posisi button vertical. pada widget column terdapat **Bagde** yang berisi padding, shape, badgecolor, border radius, dan text. lalu ada sizedbox height yang digunakan untuk mengatur jarak antar column.
![badges](/14_Flutter%20Command%20Line%20Interface%20(CLI)%20and%20Flutter%20package%20management/screenshots/task01.png)

### Task 02
Pada task 02 menambahkan packages barcode yang digunakan untuk menampilkan barcode.
pertama menambahkan packages barcode_widget dari pubdev.
![add2](/14_Flutter%20Command%20Line%20Interface%20(CLI)%20and%20Flutter%20package%20management/screenshots/pubdev2.png)
setelah menambahkan packages mengimport packages barcode_widget
![importbarcode](/14_Flutter%20Command%20Line%20Interface%20(CLI)%20and%20Flutter%20package%20management/screenshots/import_barcode.png)
jika sudah mengimport packages barcode selanjutnya membuat source code dengan widget stateless. untuk bodynya berisi widget **center** agar barcode berada di tengah, widget **column** agar barcode ditampilkan secara vertical, **barcodewidget** yang diambil dari packages barcodewidget berisi data dengan nama 'alterra academy' dan menggunakan barcode dengan jenis aztec. begitu juga untuk barcode 'flutter asik' dan barcode 'Meisya Amanda Aldi'
![barcode](/14_Flutter%20Command%20Line%20Interface%20(CLI)%20and%20Flutter%20package%20management/screenshots/task02.png)
