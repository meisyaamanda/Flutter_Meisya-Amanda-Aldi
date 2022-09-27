# (17) Form Input Button
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

### Task

#### Task 01
Membuat halaman contact dengan judul contact
```
appBar: AppBar(
        title: Text(
          'Contacts',
          style: GoogleFonts.poppins()
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
```
Selanjutnya menampilkan data nama dan nomor telepon.
Saya membuat models dengan nama DataContact untuk nama dan notelp.
```
class DataContact{
  final String nama;
  final String notelp;

  DataContact({
    required this.nama,
    required this.notelp,
  });
}
```
setelah membuat modelsnya saya membuat list dengan nama ListData. 
```
List<DataContact> ListData = [
    DataContact(nama: 'Meisya Amanda', notelp: '081270214415'),
    DataContact(nama: 'Cantika Alivia', notelp: '081378532214'),
    DataContact(nama: 'Januar Anhar', notelp: '087842317609'),
  ];
```
Jika sudah membuat models dan list data, selanjutnya saya menampilkan data dengan menggunakan ListViewseparated.
```
ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                child: Text(ListData[index].nama[0]),
              ),
            ),
            title: Text(ListData[index].nama),
            subtitle: Text(ListData[index].notelp),
          );
        },
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: ListData.length),
```
Pada list view terdiri dari item builder yang berisi list tile. pada list tile terdapat leading yang berisi circle avatar. leading digunakan untuk menampilkan foto contact tersebut. disini saya mengambil dari huruf awalan nama. Lalu title berisi text yang diambil dari list data nama dan subtitle yang berisi text yang diambil dari list data notelp.
```
floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => NewContact()));
        },
        child: Icon(Icons.add),
      ),
```
Floating action button digunakan untuk membuat button pada bagian bawah kanan. onpressed digunakan jika button di klik maka akan diarahkan ke halaman create contact. Lalu child berisi icon add.

#### Task 02
Membuat form untuk menambahkan contact.
Sebelum saya membuat form saya membuat controller untuk form dengan nama contact dan notelp. agar nilai data tersimpan saya menambahkan formkey.
```
final _fromKey = GlobalKey<FormState>();
final NamaController = TextEditingController();
final NotelpController = TextEditingController();
```
Pada pembuatan form saya menambahkan widget form yang berisi padding untuk mengatur jarak antara bagian luar dengan form. 
Form ini nantinya akan ditampilkan dalam bentuk column. Lalu tambahkan **textformfield** untuk membuat form nama. Pada textformfield nama terdapat controller dengan isian NamaController lalu **textInputAction** digunakan untuk setelah penambahan data pada keyboard jika klik enter maka akan lanjut ke form selanjutnya.
Pada decoration berisi input decoration dengan labelText Nama, hintText berguna untuk memberitahukan kepada pengguna isian data. icon person. begitu juga untuk form no telepon.
```
Form(
          key: _fromKey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: NamaController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Meisya Amanda',
                    icon: Icon(Icons.person),
                  ),
                ),
```
Selanjutnya button submit. Pada button submit saya menggunakan elevated button yang dibungkus container. Container ini digunakan unutk memberi ukuran pada button. 
Pada elevated button berisi ElevatedButton.styleform yang berisi shape untuk membuat button berbentuk kotak dengan radius 20.
Lalu child berisi text submit.
```
  Container(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ),
                ),
```