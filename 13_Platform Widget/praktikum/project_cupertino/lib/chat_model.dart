import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final String imgUrl;
  final String nama;
  final String pesan;
  final String waktu;
  final bool isGrup;
  final bool ceklis;

  const Chat({
    Key? key,
    required this.imgUrl,
    required this.nama,
    required this.pesan,
    required this.waktu,
    required this.isGrup,
    required this.ceklis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 90,
          child: Row(
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imgUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        isGrup ? const Icon(Icons.group) : const SizedBox(),
                        isGrup ? const SizedBox(width: 5) : const SizedBox(),
                        Expanded(
                          child: Text(
                            nama,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      pesan,
                      style: const TextStyle(fontSize: 18),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ceklis
                      ? Container(
                          child: const Icon(
                            Icons.done_all,
                            size: 22,
                            color: Colors.lightGreen,
                          ),
                        )
                      : const SizedBox(
                          width: 22,
                        ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    waktu,
                  ),
                  !ceklis
                      ? Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            ' ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black38,
        ),
      ],
    );
  }
}
