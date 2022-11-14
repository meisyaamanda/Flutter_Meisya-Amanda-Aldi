import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project1/theme.dart';
import 'package:provider/provider.dart';
import '../provider/homeprovider.dart';

class Details extends StatelessWidget {
  final String idDoc;
  const Details({super.key, required this.idDoc});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider =
        Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder<DocumentSnapshot<Object?>>(
          future: homeProvider.getByID(idDoc),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              var datas = snapshot.data!;
              final data = snapshot.data!.data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data["nama"],
                        style: blackTextStyle.copyWith(fontSize: 25),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        data["image"],
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        data["deskripsi"],
                        style: blackTextStyle.copyWith(fontSize: 20),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
