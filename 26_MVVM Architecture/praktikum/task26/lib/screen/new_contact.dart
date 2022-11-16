import 'package:flutter/material.dart';
import 'package:task26/model/contact_model.dart';
import 'package:task26/screen/contact_view_model.dart';
import 'package:provider/provider.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Contact'),
        centerTitle: true,
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nama',
                      hintText: 'Masukan Nama'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Tidak Boleh Kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'No HP',
                      hintText: 'Masukan No HP'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password Tidak Bole Kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()){
                      contactProvider.createContact(
                        Contact(
                        id: contactProvider.contacts.length, 
                        name: nameController.toString(), 
                        phone: phoneController.toString(),
                        ),
                      );
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          )),
    );
  }
}
