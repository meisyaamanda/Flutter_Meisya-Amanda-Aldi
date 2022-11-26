import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/page/data_user_pesan/data_pesan.dart';
import 'package:weekly3/provider/data_user_provider.dart';

class DataUserList extends StatelessWidget {
  final DataUserProvider dataUser;
  const DataUserList({Key? key, required this.dataUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataItem =  dataUser.user;
    return ListView.builder(
      itemBuilder: (context, index) {
        final users = dataItem[index];
        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DataPesan(user: users),),);
          },
          leading: const CircleAvatar(
            child: Icon(Icons.message,),
          ),
          title: Text('${users.nama}'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dari : ${users.email}'),
              Text('Pesan : ${users.pesan}', 
              maxLines: 1,
              overflow: TextOverflow.ellipsis)
            ],
          ),
        );
      },
      itemCount: dataItem.length,
    );
  }
}