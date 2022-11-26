import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:weekly3/screen/alert_contact.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController namaController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController pesanController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    pesanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Us',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Nama',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Nama',
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama Tidak Boleh Kosong';
                  }
                  return null;
                },
              ),
              Text(
                'Email',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Masukkan Email',
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email Tidak Boleh Kosong';
                  }
                  return null;
                },
              ),
              Text(
                'Message',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: pesanController,
                decoration: InputDecoration(
                  hintText: 'Message',
                ),
                textInputAction: TextInputAction.done,
                maxLines: 4,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Message Tidak Boleh Kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Container(
                            child: AlertContact(
                              nama : namaController,
                              email: emailController,
                              pesan: pesanController,
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('Submit',
                      style: whiteTextStyle.copyWith(fontSize: 16),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
