import 'package:flutter/material.dart';
import 'package:task26/screen/new_contact.dart';
import 'package:task26/screen/contact_view_model.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: modelView.contacts.length,
        itemBuilder: (context, index) {
          final contact = modelView.contacts[index];
          return ListTile(
            leading: CircleAvatar(
              child: CircleAvatar(
                child: Text(contact.name[0]),
              ),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.phone),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewContact(),
            ),
          );
        },
        tooltip: 'Tambah Data',
        child: const Icon(Icons.add),
      ),
    );
  }
}
