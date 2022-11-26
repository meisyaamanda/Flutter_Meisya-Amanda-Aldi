import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataProvider extends ChangeNotifier {
  late SharedPreferences logindata;
  String nama = '';
  String email = '';

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    nama = logindata.getString('nama').toString();
    email = logindata.getString('email').toString();
    notifyListeners();
  }
}
