import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24,0,24,0),
            child: Column(
              children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Username",
                label: Text("Username")
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Password",
                label: Text("Password"),


              ),
            ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed:(){},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      fixedSize: const Size(200, 30),
                    ),
                    child:const Text("Log In", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),))
              ]
            ),
          )
        ],
      ),
    );
  }
}
