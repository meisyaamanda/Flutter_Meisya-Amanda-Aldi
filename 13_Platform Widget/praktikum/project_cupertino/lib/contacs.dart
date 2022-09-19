import 'package:flutter/cupertino.dart';

class contacts extends StatefulWidget {
  const contacts({ Key? key }) : super(key: key);

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('Halaman Contact'),
      ),
    );
  }
}