import 'package:flutter/cupertino.dart';

class settings extends StatefulWidget {
  const settings({ Key? key }) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('Halaman Settings'),
      ),
    );
  }
}