import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/contact_model.dart';

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
