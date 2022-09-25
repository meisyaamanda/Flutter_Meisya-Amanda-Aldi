import 'package:flutter/material.dart';
import 'package:weekly2/about.dart';
import 'theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'About Us',
            style: blackTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              About(
                  image: 'asset/image/mesincuci.png',
                  judul: 'Mesin Cuci',
                  teks:
                      'Layanan mesin cuci yang menyediakan berbagai macam mesin cuci.'),
              const SizedBox(
                width: 28,
              ),
              About(
                  image: 'asset/image/interior.png',
                  judul: 'Interior Laundry',
                  teks: 'Melayani pembuatan interior laundry.'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              About(
                  image: 'asset/image/setrika.png',
                  judul: 'Setrika Uap',
                  teks:
                      'Menyediakan berbagai macam setrika uap dan pemasangan.'),
              const SizedBox(
                width: 28,
              ),
              About(
                  image: 'asset/image/plastik.png',
                  judul: 'Plastik Packing Laundry',
                  teks: 'Menjual berbagai ukuran plastik packing laundry.'),
            ],
          ),
        ],
      ),
    );
  }
}
