import 'package:flutter/material.dart';
import 'package:project1/provider/authprovider.dart';
import 'package:project1/theme.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nohpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Container(
                height: 150,
                width: 300,
                child: Image.asset('assets/image/icon/gunting1.png'),
              ),
              SizedBox(height: 30,),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: blackTextStyle.copyWith(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Masukkan Email',
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Password',
                        style: blackTextStyle.copyWith(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Masukkan Password',
                        ),
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'No HP',
                        style: blackTextStyle.copyWith(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: nohpController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Masukkan No HP',
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              authProvider.signUp(
                                emailController.text, 
                                passwordController.text
                                );
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Sign Up',
                              style: whiteTextStyle.copyWith(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
