import 'package:flutter/material.dart';
import 'package:weekly3/model/user_model.dart';

class DataPesan extends StatelessWidget {
  final UserModel user;
  const DataPesan({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(user.nama),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email : ${user.email}'),
          const SizedBox(height: 10,),
          Text('Pesan ${user.pesan}')
        ],
      ),
    );
  }
}