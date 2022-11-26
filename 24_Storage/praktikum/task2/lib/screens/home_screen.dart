import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/bloc/data_login_bloc.dart';
import 'package:task2/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences logindata;
  late DataLoginBloc _dataBloc;
  String nama = '';
  String email = '';

  // @override
  // void initState() {
  //   _dataBloc = BlocProvider.of<DataLoginBloc>(context);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<DataLoginBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task BLoc'),
        centerTitle: true,
      ),
      body: BlocBuilder<DataLoginBloc, DataLoginState>(
          bloc: bloc,
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${state.dataLogin.nama}'),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('${state.dataLogin.nama}'),
                  ElevatedButton(
                    onPressed: () {
                      // logindata.setBool('login', true);
                      // logindata.remove('username');
                      // logindata.remove('email');
                      bloc.add(HapusData());
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
            );
          }),
    );
  }
}
