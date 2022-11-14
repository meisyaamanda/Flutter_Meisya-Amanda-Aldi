import 'package:flutter/material.dart';
import 'package:project1/model/riwayat_model.dart';
import 'package:project1/theme.dart';

class RiwayatCard extends StatelessWidget {
  final RiwayatModel riwayatModel;
  final Function() onpressedHapus;
  final Function() onpressed;
  const RiwayatCard(this.riwayatModel, this.onpressedHapus, this.onpressed,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      riwayatModel.nama,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      riwayatModel.jam,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      riwayatModel.treatment,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                      ),
                    ),
                    Text(
                      riwayatModel.tgl,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: onpressedHapus, child: Text("Hapus"))
        ],
      ),
    );
  }
}
