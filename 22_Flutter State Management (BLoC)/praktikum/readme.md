# (22) Flutter State Management (BLoc)
## Data Diri

Nomor Urut: 1_018FLB_40
Nama : Meisya Amanda Aldi

## Task
Pertama - tama saya menambahkan BLoc pada pubspec.yaml
![BLoc](/22_Flutter%20State%20Management%20(BLoC)/screenshots/bloc.png)
Lalu membuat folder bloc
![Folder](/22_Flutter%20State%20Management%20(BLoC)/screenshots/folder.png)
Lalu menambah event
```
abstract class ContactEvent extends Equatable {
  const ContactEvent();
}

class TambahContact extends ContactEvent {
  final DataContact contact;

  const TambahContact(this.contact);

  @override
  List<Object?> get props => [contact];
}

class HapusContact extends ContactEvent {
  final int contactIndex;

  const HapusContact(this.contactIndex);

  @override
  List<Object?> get props => [contactIndex];
}
```
Menambah state
```
class ContactState extends Equatable{
  final List <DataContact> contacts;
  const ContactState(this.contacts);

  @override
  List<Object?> get props => [contacts];

}
```
Menambah logika bisnis untuk mengirim state baru
```
  void _tambahContact(TambahContact event, Emitter<ContactState> emit){
    emit(ContactState([...state.contacts, event.contact]));
  }
```
Menambah blo provider di main.dart
```
return MultiBlocProvider(
      providers: [
        BlocProvider<ContactBloc>(
          create: (context) => ContactBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
```
Menambahkan bloc builder untuk pembuatan widget sebagai respon terdahap state baru.
```
BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) => ListView.builder(
          itemCount: state.contacts.length,
```