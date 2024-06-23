import 'package:flutter/material.dart';
import 'package:untitled/pages/home.dart';
import 'package:untitled/pages/signup/login.dart';
import 'package:untitled/pages/signup/signup.dart';
import 'package:untitled/pages/wellcome/wellcome.dart';
import 'package:untitled/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: MyRoutes.WellcomeRoutes,
      routes: {
        "/": (context) => const Login(),
        MyRoutes.HomeRoutes: (context) => const Home(),
        MyRoutes.LoginRoutes: (context) => const Login(),
        MyRoutes.SignupRoutes: (context) => const Signup(),
        MyRoutes.WellcomeRoutes: (context) => const Wellcome()
      },
    );
  }
}
