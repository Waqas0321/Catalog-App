import 'package:catalag_app/Pages/homepage.dart';
import 'package:catalag_app/Pages/loginpage.dart';
import 'package:flutter/material.dart';

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
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.amber),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: "/login",
        routes: {
          "/": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        },
      ),
    );
  }
}
