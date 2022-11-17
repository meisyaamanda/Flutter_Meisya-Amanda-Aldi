import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task22/bloc/contact_bloc.dart';
import 'package:task22/bloc/contact_event.dart';
import 'package:task22/models/data_contact.dart';
import 'package:task22/pages/home_page.dart';

class TambahData extends StatefulWidget {
  const TambahData({Key? key}) : super(key: key);

  @override
  State<TambahData> createState() => _TambahDataState();
}

class _TambahDataState extends State<TambahData> {
  TextEditingController namaController = TextEditingController();
  TextEditingController noController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                children: [
                  TextFormField(
                    controller: namaController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: 'Nama',
                      hintText: 'Masukan Nama',
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
                    controller: noController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.contact_phone),
                      border: OutlineInputBorder(),
                      labelText: 'No Telp',
                      hintText: 'Masukan No Telp',
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
                        setState(
                          () {
                            context.read<ContactBloc>().add(
                                  TambahContact(
                                    DataContact(
                                      nama: namaController.text,
                                      no: noController.text,
                                    ),
                                  ),
                                );
                          },
                        );

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const HomePage(),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'SUBMIT',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
