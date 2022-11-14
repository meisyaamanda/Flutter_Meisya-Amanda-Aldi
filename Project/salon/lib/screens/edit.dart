import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project1/provider/bookingprovider.dart';
import 'package:project1/theme.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Edit extends StatelessWidget {
  final String idDoc;
  Edit({super.key, required this.idDoc});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    BookingProvider bookingProvider =
        Provider.of<BookingProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  FutureBuilder<DocumentSnapshot<Object?>>(
                      future: bookingProvider.getBookingByID(idDoc),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          final data =
                              snapshot.data!.data() as Map<String, dynamic>;
                          bookingProvider.namabController.text = data["nama pemesan"];
                          bookingProvider.nobController.text =
                              data["no telepon"];
                          bookingProvider.tanggalController.text =
                              data["tanggal"];
                          bookingProvider.jamController.text = data["jam"];
                          bookingProvider.treatmentController.text =
                              data["treatment"];
                          return Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nama Pemesan",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  controller: bookingProvider.namabController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      hintText: 'Masukan Nama'),
                                  textInputAction: TextInputAction.next,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "No Telepon",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  controller: bookingProvider.nobController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      hintText: 'Masukan No telepon'),
                                  textInputAction: TextInputAction.next,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Tanggal Booking",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Consumer<BookingProvider>(
                                  builder: (_, booking, child) {
                                    return TextFormField(
                                      onTap: () {
                                        booking.datePicker(context);
                                      },
                                      controller: booking.tanggalController,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        hintText: 'Pilih Tanggal Booking',
                                        hintStyle: greyTextStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Tanggal tidak boleh kosong';
                                        }
                                        return null;
                                      },
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Jam Booking",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Consumer<BookingProvider>(
                                  builder: (_, booking, child) {
                                    return TextFormField(
                                      onTap: () {
                                        booking.timePicker(context);
                                      },
                                      controller: booking.jamController,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        hintText: 'Pilih Jam Booking',
                                        hintStyle: greyTextStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Jam tidak boleh kosong';
                                        }
                                        return null;
                                      },
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Treatment",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  controller:
                                      bookingProvider.treatmentController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      hintText: 'Contoh : Creambath'),
                                  maxLines: 7,
                                  textInputAction: TextInputAction.done,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {
                                        bookingProvider.updateBooking(idDoc,context);
                                      },
                                      child: Text(
                                        'Edit',
                                        style: whiteTextStyle.copyWith(
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
