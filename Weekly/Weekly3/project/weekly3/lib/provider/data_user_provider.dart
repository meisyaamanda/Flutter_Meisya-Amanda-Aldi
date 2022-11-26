import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/model/user_model.dart';

class DataUserProvider extends ChangeNotifier{
  final List<UserModel> _users = [];

  List<UserModel> get user => List.unmodifiable(_users);

  void tambahData(UserModel userModel){
    _users.add(userModel);
    notifyListeners();
  }
}