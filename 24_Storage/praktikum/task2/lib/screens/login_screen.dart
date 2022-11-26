import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/bloc/data_login_bloc.dart';
import 'package:task2/models/data_model.dart';
import 'package:task2/screens/home_screen.dart';
import 'package:task2/theme.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController noController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  late DataLoginBloc _dataBloc;

  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    noController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<DataLoginBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: namaController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: 'Masukan nama',
                          hintStyle: greyGelapTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Email',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: 'Masukan email',
                          hintStyle: greyGelapTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'No Telp',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: noController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: 'Masukan no telp',
                          hintStyle: greyGelapTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'No telp tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Password',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: 'Masukan password',
                          hintStyle: greyGelapTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<DataLoginBloc, DataLoginState>(
                        builder: (context, state) {
                          return Center(
                            child: Container(
                              height: 55,
                              width: 200,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: blueColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    )),
                                onPressed: () {
                                  final isValidForm =
                                      _formKey.currentState!.validate();

                                  String nama = namaController.text;
                                  String email = emailController.text;
                                  String no = noController.text;
                                  String password = passwordController.text;

                                  final data = DataModel(
                                    nama,
                                    email,
                                    no,
                                    password,
                                  );
                                  bloc.add(TambahData(dataModel: data));

                                  if (isValidForm) {
                                    // logindata.setBool('login', false);
                                    // logindata.setString('username', nama);
                                    // logindata.setString('email', email);

                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                        (route) => false);
                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
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
