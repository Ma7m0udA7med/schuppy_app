import 'package:flutter/material.dart';
import 'package:schupply_app/login/view/login.dart';
import 'package:schupply_app/onboarding/view/onboarding.dart';
import 'package:schupply_app/splash/view/spalsh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (context) => Splash(),
        '/onboarding': (context) => Onboarding(),
        '/login': (context) => Login(),

        //'/signup': (context) => Signup(),
      },
    );
  }
}
