import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  const chat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('MA'),
          ),
          title: Text('Meisya Amanda'),
          subtitle: Text('photo'),
        );
      },
    );
  }
}
