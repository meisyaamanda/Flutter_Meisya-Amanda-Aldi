# (25) Introduction REST API
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

### Task
#### Task 01
Melakukan POST request dengan menggunakan DIO untuk mengirim data contact
Method post digunakan untuk menambahkan user.
```
Future createData({
    required String name,
    required String job,
  }) async {
    try {
      final Response response = await dio.post(
        '$baseUrl/4',
        data: {
          'name': name,
          'job': job,
        },
      );

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
```
Pada potongan kode diatas saya membuat parameter untuk menerima name dann job yang diinputkan. lalu, saya menambahkan data sebagai data yang di request API agar name dan job bisa ditambahkan.
untuk tampilannya terdapat pada gambar dibawha ini
![hasil](/25_Introduction%20REST%20API/screenshots/tampilan.png)

#### Task 02
Mengubah bentuk JSON ke bentuk model
```
class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }
```
Pada potongan kode diatas saya membuat model dengan nama Data.