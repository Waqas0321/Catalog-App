import 'package:catalog_app/Pages/homepage.dart';
import 'package:catalog_app/Pages/sign_up.dart';
import 'package:catalog_app/utils/routs.dart';
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
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(),
        initialRoute: MyRouts.loginRout,
        routes: {
          MyRouts.loginRout: (context) => const LoginPage(),
          MyRouts.homeRout: (context) => const HomePage(),
          MyRouts.signupRout: (context) => const SignUpPage(),
        },
      ),
    );
  }
}
