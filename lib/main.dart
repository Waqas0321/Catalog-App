import 'package:flutter/material.dart';
import 'Pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        title: "Catalog App",
        theme: ThemeData(
        ),
        routes: {
          "/": (context) => const LoginPage(),
        },
      ),
    );
  }
}
