import 'package:flutter/material.dart';
import 'package:weekly2/about.dart';
import 'package:weekly2/aboutsection.dart';
import 'package:weekly2/contact.dart';
import 'package:weekly2/sidebar.dart';
import 'package:weekly2/theme.dart';
import 'package:weekly2/tujuan.dart';

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
      drawer: SideBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Tujuan(),
            Contact(nama: nama, email: email, pesan: pesan),
            AboutSection(),
          ],
        ),
      ),
    );
  }
}

