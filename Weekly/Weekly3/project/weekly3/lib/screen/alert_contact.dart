import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/model/user_model.dart';
import 'package:weekly3/provider/data_user_provider.dart';
import 'package:weekly3/theme.dart';

class AlertContact extends StatelessWidget {
  final TextEditingController nama;
  final TextEditingController email;
  final TextEditingController pesan;
  const AlertContact(
      {Key? key, required this.nama, required this.email, required this.pesan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<DataUserProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Apakah Anda Yakin?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Text('Nama'),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(nama.text),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Email',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(email.text),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Pesan',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(pesan.text),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 40,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                onPressed: () {
                  final data = UserModel(
                      nama: nama.text, email: email.text, pesan: pesan.text);
                  userData.tambahData(data);

                  nama.clear();
                  email.clear();
                  pesan.clear();
                  Navigator.pop(context);
                },
                child: Text(
                  'Submit',
                  style: whiteTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
