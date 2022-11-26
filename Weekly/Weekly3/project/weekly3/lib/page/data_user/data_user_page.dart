import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/page/data_user/data_user_list.dart';
import 'package:weekly3/page/data_user/empty_page.dart';
import 'package:weekly3/provider/data_user_provider.dart';

class DataUser extends StatefulWidget {
  const DataUser({super.key});

  @override
  State<DataUser> createState() => _DataUserListState();
}

class _DataUserListState extends State<DataUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data User', style: TextStyle(fontSize: 18),),
      ),
      body: buildDataUser(),
    );
  }
}

Widget buildDataUser(){
  return Consumer<DataUserProvider>(builder: (context, manager, child){
    if(manager.user.isNotEmpty){
      return DataUserList(
        dataUser : manager,
      );
    } else{
      return EmptyPage();
    }
  });
}