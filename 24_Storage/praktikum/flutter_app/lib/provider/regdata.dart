import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataProvider extends ChangeNotifier {
  late SharedPreferences regdata;
  String nama = '';
  String email = '';

  void initial() async {
    regdata = await SharedPreferences.getInstance();
    nama = regdata.getString('nama').toString();
    email = regdata.getString('email').toString();
    notifyListeners();
  }
}
