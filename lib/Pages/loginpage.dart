// ignore_for_file: use_build_context_synchronously

import 'package:catalog_app/utils/routs.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  onToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.homeRout);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/hey_email_liaa.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 100),
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      label: Text("Username"),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username should not be empty";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      label: Text("Password"),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password should not be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: changeButton
                        ? const Color.fromARGB(255, 2, 165, 51)
                        : Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 70 : 8),
                    child: InkWell(
                      onTap: () {
                        onToHome(context);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: changeButton ? 70 : 40,
                        width: changeButton ? 70 : 140,
                        alignment: Alignment.center,
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Log In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const Text("Create New Account "),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, MyRouts.signupRout);
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
