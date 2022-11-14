import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project1/model/riwayat_model.dart';
import 'package:project1/provider/bookingprovider.dart';
import 'package:project1/screens/edit.dart';
import 'package:project1/screens/widget/riwayat_card.dart';
import 'package:provider/provider.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    BookingProvider bookingProvider = Provider.of<BookingProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot<Object?>>(
              stream: bookingProvider.streamBooking(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  var data = snapshot.data!.docs;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final dataBooking =
                            data[index].data() as Map<String, dynamic>;
                        return RiwayatCard(
                            RiwayatModel(
                              nama: dataBooking['nama pemesan'],
                              treatment: dataBooking['treatment'],
                              tgl: dataBooking['tanggal'],
                              jam: dataBooking['jam'],
                            ), () {
                          bookingProvider.hapusData(data[index].id);
                        }, () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Edit(idDoc: data[index].id),
                            ),
                          );
                        });
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
