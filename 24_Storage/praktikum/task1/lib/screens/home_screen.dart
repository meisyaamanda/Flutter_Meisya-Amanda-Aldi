import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:task1/provider/data_manager.dart';

import 'package:task1/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).initial();
  }

  @override
  Widget build(BuildContext context) {
    DataProvider dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Task 1(Provider)'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<DataProvider>(
                builder: (context, dataProvider, _) {
                  return Text(dataProvider.nama);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Consumer<DataProvider>(
                builder: (context, dataProvider, _) {
                  return Text(dataProvider.email);
                },
              ),
              ElevatedButton(
                onPressed: () {
                  dataProvider.logindata.setBool('login', true);
                  dataProvider.logindata.remove('nama');
                  dataProvider.logindata.remove('email');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text('logout'),
              ),
            ],
          ),
        ));
  }
}
