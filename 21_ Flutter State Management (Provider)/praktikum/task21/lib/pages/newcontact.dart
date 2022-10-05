import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task21/models/data.dart';
import 'package:task21/pages/home_page.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final _fromKey = GlobalKey<FormState>();
  final NamaController = TextEditingController();
  final NotelpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Contact',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _fromKey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: NamaController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Meisya Amanda',
                    icon: Icon(Icons.person),
                  ),
                ),
                TextFormField(
                  controller: NotelpController,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: 'No Telepon',
                    hintText: '08xxxxxxxxxx',
                    icon: Icon(Icons.phone),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ListData.add(DataContact(
                            nama: NamaController.text,
                            notelp: NotelpController.text));
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      'Create Contact',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
