import 'package:flutter/material.dart';

class Contact {
  final int id;
  final String name;
  final String phone;

  Contact({required this.id, required this.name, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(id: json['id'], name: json['name'], phone: json['phone']);
  }

  static Map<String, dynamic> toJson(Contact contact) => {
        'id': contact.id,
        'name': contact.name,
        'phone': contact.phone,
      };
}
