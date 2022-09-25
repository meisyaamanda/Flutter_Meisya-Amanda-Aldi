import 'package:flutter/material.dart';
import 'theme.dart';

class Contact extends StatelessWidget {
  Contact({
    Key? key,
    required this.nama,
    required this.email,
    required this.pesan,
  }) : super(key: key);

  final TextEditingController nama;
  final TextEditingController email;
  final TextEditingController pesan;
  final _formKey = GlobalKey<FormState>();

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
              const SizedBox(height: 10,),
              Text(
                'Nama',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: nama,
                decoration: InputDecoration(
                  hintText: 'Masukkan Nama',
                ),
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
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Masukkan Email',
                ),
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
                controller: pesan,
                decoration: InputDecoration(
                  hintText: 'Message',
                ),
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
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text('Submit',style: whiteTextStyle.copyWith(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
