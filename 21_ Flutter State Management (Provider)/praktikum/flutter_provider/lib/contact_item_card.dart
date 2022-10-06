import 'package:flutter/material.dart';
import 'contact_model.dart';


class ContactItemCard extends StatelessWidget {
  final ContactModel contact;
  final Function() onPressed;
  const ContactItemCard({
    Key? key,
    required this.contact,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: CircleAvatar(
          child: Text(
            contact.nama[0],
          ),
        ),
      ),
      title: Text(contact.nama),
      subtitle: Text(contact.notelp),
      trailing: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: const Text('Apakah anda yakin?'),
              actions: [
                TextButton(
                  onPressed: onPressed,
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No'),
                ),
              ],
            ),
          );
        },
        icon: const Icon(Icons.delete_forever),
      ),
    );
  }
}
