import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project1/provider/authprovider.dart';
import 'package:project1/provider/homeprovider.dart';
import 'package:project1/screens/booking.dart';
import 'package:project1/screens/details.dart';
import 'package:project1/screens/riwayat.dart';
import 'package:project1/screens/widget/menu_card.dart';
import 'package:project1/theme.dart';
import 'package:project1/model/list_home.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider =
        Provider.of<HomeProvider>(context, listen: false);
    AuthProvider auth = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Beauty Salon",
                      style: whiteTextStyle.copyWith(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        auth.logOut(context);
                      },
                      child: Icon(Icons.logout, color: whiteColor, size: 30),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Hair Style',
                          style: blackTextStyle.copyWith(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        StreamBuilder<QuerySnapshot<Object?>>(
                          stream: homeProvider.streamdetail(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.active) {
                              var data = snapshot.data!.docs;
                              return Expanded(
                                child: GridView.builder(
                                  itemCount: data.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                  itemBuilder: (context, index) {
                                    final dataMenu = data[index].data()
                                        as Map<String, dynamic>;
                                    return MenuCard(
                                        MenuModel(
                                          logo: dataMenu['logo'],
                                          nama: dataMenu['nama'],
                                        ), () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Details(
                                            idDoc: data[index].id,
                                          ),
                                        ),
                                      );
                                    });
                                  },
                                ),
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
