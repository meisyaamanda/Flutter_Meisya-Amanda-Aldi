import 'package:flutter/material.dart';
import 'package:flutter_provider/contact_model.dart';
import 'package:uuid/uuid.dart';

class ContactItemScreen extends StatefulWidget {
  final Function(ContactModel) onCreate;

  ContactItemScreen({
    Key? key,
    required this.onCreate,
  }) : super(key: key);

  @override
  State<ContactItemScreen> createState() => _ContactItemScreenState();
}

class _ContactItemScreenState extends State<ContactItemScreen> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _noController = TextEditingController();
  String _contactnama = '';
  String _no = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _namaController.addListener(() {
      setState(() {
        _contactnama = _namaController.text;
      });
    });

    _noController.addListener(() {
      setState(() {
        _no = _noController.text;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _namaController.dispose();
    _noController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Contact'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          buildTambahField(),
        ],
      ),
    );
  }

  Widget buildTambahField() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              children: [
                TextFormField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                    hintText: 'John Orlando',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _noController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.contact_phone), 
                    border: OutlineInputBorder(),
                    labelText: 'No Telp',
                    hintText: '08xxxxxxxxxx',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'No Telp tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final contactItem = ContactModel(
                        id: const Uuid().v1(),
                        nama: _namaController.text,
                        notelp: _noController.text,
                      );
                      widget.onCreate(contactItem);
                    }
                  },
                  child: Text(
                    'Create Contact',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
