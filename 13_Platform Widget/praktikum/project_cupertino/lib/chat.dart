import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_cupertino/chat_model.dart';
import 'package:project_cupertino/tab_menu.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoSearchTextField(
                onChanged: (String value) {},
                onSubmitted: (String value) {},
              ),
              tabmenu(),
              Chat(
                imgUrl: 'assets/gambar1.jpg',
                nama: 'Michael',
                pesan: 'Hallo broooo!!',
                waktu: '15.30',
                isGrup: false,
                ceklis: true,
              ),
              Chat(
                imgUrl: 'assets/gambar2.jpg',
                nama: 'Dini Mardani',
                pesan: 'Kuy Makan',
                waktu: '12.15',
                isGrup: false,
                ceklis: true,
              ),
              Chat(
                imgUrl: 'assets/gambar3.jpg',
                nama: 'Zahra Andini',
                pesan: 'Assalamualaikum',
                waktu: '16.00',
                isGrup: false,
                ceklis: false,
              ),
              Chat(
                imgUrl: 'assets/gambar4.png',
                nama: '4IA10',
                pesan: 'Dosen udah masuk !!!',
                waktu: '8.00',
                isGrup: true,
                ceklis: false,
              ),
              Chat(
                imgUrl: 'assets/gambar5.jpg',
                nama: 'Lala zulaikha',
                pesan: 'Otwwwww',
                waktu: '15.00',
                isGrup: false,
                ceklis: false,
              ),
              Chat(
                imgUrl: 'assets/gambar6.jpg',
                nama: 'Tino',
                pesan: 'Futsal Kuy !!!',
                waktu: '19.00',
                isGrup: false,
                ceklis: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
