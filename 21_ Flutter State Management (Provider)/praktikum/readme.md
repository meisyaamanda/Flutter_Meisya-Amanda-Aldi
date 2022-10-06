# (21) Flutter State Management (Provider)
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

### Task
#### Task 01
Models
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
Potongan kode diatas merupakan model pada list. 

File newcontact
```
setState(() {
                        ListData.add(DataContact(
                            nama: NamaController.text,
                            notelp: NotelpController.text));
                      });
```
Pada potongan kode diatas digunakan untuk menambahkan data kedalam list.

#### Task 02
Pada soal no 2 saya membuat provider.
Saya membuat file contact_model
```
class ContactModel{
  String id = '';
  String nama = '';
  String no = '';

  ContactModel({
    required this.id,
    required this.nama,
    required this.no,
  });
}
```
potongan kode diatas digunakan untuk membuat model pada list contact.

Selanjutnya saya membuat file dengan nama contact_manajer yanng berguna untuk membuat provider
```
class ContactManager extends ChangeNotifier {
  final _contactModels = <ContactModel>[];
  List<ContactModel> get contactModel => List.unmodifiable(_contactModels);

  void addContact(ContactModel contact) {
    _contactModels.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contactModels.removeAt(index);
    notifyListeners();
  }
}
```
Pada potongan kode diatas finas _contactModels akan menyimpan data yang telah diinputkan. List<ContactModel> mengambil property contact model. method add dan method delete digunakan untuk menambahkan data contact atau menghapus data contact.

File main.dart 
```
return ChangeNotifierProvider(
      create: (context) => ContactManager(),
```
Pada potongan kode diatas ditambahkan changenotifierprovider untuk mendaftarkan provider.

contact_screen.dart
```
final manager = Provider.of<ContactManager>(context, listen: false);
```
Pada potongan kode diatas menggunakan state dari provider.
```
Widget buildContact() {
    return Consumer<ContactManager>(builder: (context, manager, child) {
      if (manager.contactModel.isNotEmpty) {
        return ContactListScreen(
          manager: manager,
        );
      } else {
        return const EmptyScreen();
      }
    });
  }
```
Pada potongan kode diatas digunakan untuk membungkus widget apa saja yang akan melakukan perubahan data.
