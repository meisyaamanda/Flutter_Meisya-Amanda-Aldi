import 'package:flutter/material.dart';
import 'package:weekly1/contact.dart';
import 'package:weekly1/theme.dart';
import 'package:weekly1/tujuan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nama = TextEditingController();
  var email = TextEditingController();
  var pesan = TextEditingController();
  GlobalKey<FormState> FormKey1() => GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'DMLI',
          style: whiteTextStyle.copyWith(
              fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Tujuan(),
            Contact(nama: nama, email: email, pesan: pesan),
          ],
        ),
      ),
    );
  }
}
