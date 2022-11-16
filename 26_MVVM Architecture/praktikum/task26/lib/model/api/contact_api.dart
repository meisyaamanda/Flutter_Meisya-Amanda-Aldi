import 'dart:convert';
import 'package:task26/model/contact_model.dart';
import 'package:dio/dio.dart';

class ContactAPI {
  static Future<List<Contact>> getContact() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');

    List<Contact> contact = (response.data as List)
        .map((e) => Contact(id: e['id'], name: e['name'], phone: e['phone']))
        .toList();

    return contact;
  }

  static Future<String> createContact(Contact contact) async {
    var data = jsonEncode(<String, dynamic>{
      'id': contact.id,
      'name': contact.name,
      'phone': contact.phone
    });
    final response = await Dio().post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      data: data,
    );

    if (response.statusCode == 201) {
      return 'Berhasil ditambahkan';
    } else {
      return 'Gagal ditambahkan';
    }
  }
}
