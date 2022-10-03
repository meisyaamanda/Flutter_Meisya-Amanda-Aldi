import 'package:flutter/material.dart';

class DataContact{
  final String nama;
  final String notelp;

  DataContact({
    required this.nama,
    required this.notelp,
  });
}

List<DataContact> ListData = [
    DataContact(nama: 'Meisya Amanda', notelp: '081270214415'),
    DataContact(nama: 'Cantika Alivia', notelp: '081378532214'),
    DataContact(nama: 'Januar Anhar', notelp: '087842317609'),
  ];
