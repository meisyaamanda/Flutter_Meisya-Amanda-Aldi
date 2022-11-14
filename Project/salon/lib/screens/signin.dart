import 'package:flutter/material.dart';
import 'package:project1/provider/authprovider.dart';
import 'package:project1/screens/signup.dart';
import 'package:project1/theme.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 300,
                child: Image.asset('assets/image/icon/gunting1.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Masukkan Email',
                        ),
                        textInputAction: TextInputAction.next,
                        validator: ((value) {
                          if (value!.isEmpty){
                            return 'Email Anda Kosong';
                          }
                          return null;
                        }),
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
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        validator: ((value) {
                          if (value!.isEmpty){
                            return 'Password Anda Kosong';
                          }
                          return null;
                        }),
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
                              if(_formkey.currentState!.validate())
                              authProvider.login(
                                emailController.text, 
                                passwordController.text, 
                                context
                              );
                            },
                            child: Text(
                              'Login',
                              style: whiteTextStyle.copyWith(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont Have An Account?',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      )
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
