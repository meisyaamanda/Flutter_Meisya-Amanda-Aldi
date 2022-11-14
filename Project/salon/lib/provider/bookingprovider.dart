import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project1/screens/bottom.dart';

class BookingProvider extends ChangeNotifier{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  DateTime currentDate = DateTime.now();
  DateTime? dueDate;
  TimeOfDay? time;
  final namabController = TextEditingController();
  final nobController = TextEditingController();
  final tanggalController = TextEditingController();
  final jamController = TextEditingController();
  final treatmentController = TextEditingController();

  void datePicker(context) async {
    final selectDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(currentDate.year + 5),
    );

    if (selectDate != null) {
      dueDate = selectDate;
      tanggalController.text = DateFormat('dd-MM-yyyy').format(dueDate!);
    }
    notifyListeners();
  }

  void timePicker(context) async {
    final selectTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectTime != null) {
      time = selectTime;
      jamController.text =
          '${time!.hour.toString().padLeft(2, '0')}:${time!.minute.toString().padLeft(2, '0')}';
    }
    notifyListeners();
  }
  void tambahData(context) async {
    CollectionReference booking = firestore.collection("booking");
  

    booking.add({
      'nama pemesan': namabController.text,
      'no telepon':nobController.text,
      'tanggal': tanggalController.text,
      'jam': jamController.text,
      'treatment': treatmentController.text,
    });
    
    namabController.clear();
    nobController.clear();
    tanggalController.clear();
    jamController.clear();
    treatmentController.clear();

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Bottom(),
      ),
      (route) => false,
    );
  }
  Stream<QuerySnapshot<Object?>> streamBooking() {
    CollectionReference data = firestore.collection("booking");
    return data.snapshots();
  }
  void hapusData(String id) {
    DocumentReference docRef = firestore.collection("booking").doc(id);
    docRef.delete();
  }
  Future<DocumentSnapshot<Object?>> getBookingByID(String id) {
    DocumentReference docRef = firestore.collection("booking").doc(id);
    return docRef.get();
  }
  void updateBooking(String id, context) {

    DocumentReference docRef = firestore.collection("booking").doc(id);

    docRef.update({
      'nama pemesan': namabController.text,
      'no telepon': nobController.text,
      'tanggal': tanggalController.text,
      'jam': jamController.text,
      'treatment': treatmentController.text,
    });
    
   namabController.clear();
   nobController.clear();
   tanggalController.clear();
   jamController.clear();
   treatmentController.clear();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Bottom(),
      ),
      (route) => false,
    );
  }
}