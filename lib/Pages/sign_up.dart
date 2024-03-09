import 'package:catalog_app/utils/routs.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _signupFormKey = GlobalKey<FormState>();
  onToHomeFromSignUp(BuildContext context) {
    if (_signupFormKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRouts.homeRout);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/sign_up.png",
              fit: BoxFit.cover,
            ),
            const Text(
              "Create Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Material(
                child: Form(
                  key: _signupFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username",
                            label: Text("Username")),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Username";
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Enter Email",
                          label: Text("Email"),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Create Password",
                            label: Text("Password")),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please create Password";
                          } else if (value.length < 6) {
                            return "Pasword length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          onToHomeFromSignUp(context);
                        },
                        child: Ink(
                          height: 40,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text("Already have an account? "),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRouts.loginRout);
                            },
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
