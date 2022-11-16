import 'package:flutter/cupertino.dart';
import 'package:task26/model/api/contact_api.dart';
import 'package:task26/model/contact_model.dart';

class ContactViewModel with ChangeNotifier{
  List<Contact> _contact = [];
  List<Contact> get contacts => _contact;

  Contact? _contactId;
  Contact? get contactId => _contactId;

  String? status;

  getAllContacts() async {
    final c = await ContactAPI.getContact();
    _contact = c;
    notifyListeners();
  }

  createContact(Contact contact) async {
    final c = await ContactAPI.createContact(contact);
    status = c;
    notifyListeners();
  }
}