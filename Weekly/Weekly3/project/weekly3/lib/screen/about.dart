import 'package:flutter/material.dart';
import '../theme.dart';

class About extends StatelessWidget {
  final String image;
  final String judul;
  final String teks;

  const About({super.key, required this.image, required this.judul, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 350,
      //margin: EdgeInsets.only(left: edge,),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: blueColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 140,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                 teks,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}