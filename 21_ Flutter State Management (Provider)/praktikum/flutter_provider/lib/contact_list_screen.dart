import 'package:flutter/material.dart';
import 'package:flutter_provider/contact_item_card.dart';
import 'package:flutter_provider/contact_manager.dart';

class ContactListScreen extends StatelessWidget {
  final ContactManager manager;

  const ContactListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactItems = manager.contactModel;
    return ListView.separated(
      itemCount: contactItems.length,
      itemBuilder: (context, index) {
        final item = contactItems[index];
        return ContactItemCard(
          key: Key(item.id),
          contact: item,
          onPressed: () {
            manager.deleteContact(index);
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${item.nama} berhasil dihapus'),
              ),
            );
          },
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 16,
        );
      },
    );
  }
}
