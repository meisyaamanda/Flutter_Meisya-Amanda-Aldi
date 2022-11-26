import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/provider/data_manager.dart';
import 'package:task1/screens/home_screen.dart';
import 'package:task1/theme.dart';

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                ),
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
                          border: const OutlineInputBorder(
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
                          border: const OutlineInputBorder(
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
                          border: const OutlineInputBorder(
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
                          border: const OutlineInputBorder(
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
                      Center(
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

                              if (isValidForm) {
                                logindata.setBool('login', false);
                                logindata.setString('nama', nama);
                                logindata.setString('email', email);

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
