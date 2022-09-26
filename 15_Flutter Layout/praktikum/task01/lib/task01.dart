import 'package:flutter/material.dart';

class TugasList extends StatefulWidget {
  const TugasList({super.key});

  @override
  State<TugasList> createState() => _TugasListState();
}

class _TugasListState extends State<TugasList> {
  var chat = [
    {
      'nama': 'Meisya Amanda',
      'notelp': '081270214415',
    },
    {
      'nama': 'Andra Ansara',
      'notelp': '082341542155',
    },
    {
      'nama': 'Assyifa Andari',
      'notelp': '083241353214',
    },
    {
      'nama': 'Jihan Salsa',
      'notelp': '085982134521',
    },
    {
      'nama': 'Salsabila Andriana',
      'notelp': '087853214523',
    },
    {
      'nama': 'Siti',
      'notelp': '082312543219',
    },
    {
      'nama': 'Zakariyya',
      'notelp': '082241325673',
    },
    {
      'nama': 'Dini Agustin',
      'notelp': '085934985501',
    },
    {
      'nama': 'Cantika Alivia',
      'notelp': '081374663241',
    },
    {
      'nama': 'Evan Dimas',
      'notelp': '08126643215',
    },
    {
      'nama': 'Shani Anggraini',
      'notelp': '081375342164',
    },
    {
      'nama': 'Jihan Fadilah',
      'notelp': '082114563421',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JSON ListView in Flutter'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: chat.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(chat[index]['nama']![0]),
                ),
                title: Text(
                  '${chat[index]['nama']}',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  '${chat[index]['notelp']}',
                  style: TextStyle(fontSize: 14),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
