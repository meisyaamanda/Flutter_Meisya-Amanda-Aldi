import 'package:flutter/material.dart';
import '../theme.dart';

class Tujuan extends StatelessWidget {
  const Tujuan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken),
                image: AssetImage('asset/image/laundry.jpeg'),
                fit: BoxFit.cover),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'D Mesin Laundry dan Interior atau disingkat DMLI merupakan salah satu usaha yang menyediakan perlengkapan laundry. DMLI juga menyediakan layanan pembuatan interior laundry untuk memperindah toko laundry anda.',
              style: whiteTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
