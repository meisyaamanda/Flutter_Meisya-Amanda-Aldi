import 'package:flutter/material.dart';
import 'package:weekly3/screen/about.dart';
import 'package:weekly3/screen/aboutsection.dart';
import 'package:weekly3/screen/contact.dart';
import 'package:weekly3/screen/sidebar.dart';
import 'package:weekly3/screen/tujuan.dart';
import 'package:weekly3/theme.dart';


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
            Contact(),
            AboutSection(),
          ],
        ),
      ),
    );
  }
}

