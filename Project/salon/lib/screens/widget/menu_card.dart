import 'package:flutter/material.dart';
import 'package:project1/model/list_home.dart';

class MenuCard extends StatelessWidget {
  final MenuModel menuModel;
  final Function() onpressed;

  const MenuCard(this.menuModel, this.onpressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        height: 180,
        width: 150,
        decoration: BoxDecoration(
          color: Color(0xffFAD6A5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(menuModel.logo), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              menuModel.nama,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
