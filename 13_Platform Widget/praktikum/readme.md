# (13) Platform Widget
## Data Diri
Nomor Urut: 1_018FLB_40

Nama : Meisya Amanda Aldi

## Task

### Task 01
Material App
yang pertama saya menjelaskan untuk pembuatan drawer. Drawer digunakan untuk membuat strip 3 yang ada di sebelah kiri yang berisi acount, lalu list aplikasi.
```
Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text('Meisya Amanda'),
              accountEmail: Text('+6281270214415'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/image/gambar.jpg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/hutan.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('New Group'),
          ),
```
Lalu untuk chat saya membuat menggunakan listview.builder dengan logo nama awal dan title berisi nama dan subtitle text photo.
```
ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('MA'),
          ),
          title: Text('Meisya Amanda'),
          subtitle: Text('photo'),
        );
      },
    );
```
Mohon maaf pak saya tidak melampirkan output program karena pada saat saya run program sepertinya gradle saya bermasalah dan menampilkan seperti ini pak 
![error](/13_Platform%20Widget/screenshots/error.png)