import 'package:flutter/material.dart';
import './newcontact.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task20/models/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: GoogleFonts.poppins()
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                child: Text(ListData[index].nama[0]),
              ),
            ),
            title: Text(ListData[index].nama),
            subtitle: Text(ListData[index].notelp),
          );
        },
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: ListData.length),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/TambahKontak');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
