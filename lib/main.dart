import 'package:flutter/material.dart';
import 'package:test1/authentication/login_screen.dart';
import 'package:test1/homeScreen/homeScreen.dart';
import 'package:test1/splash_screen/splash_screen.dart';

import 'authentication/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color.fromARGB(83, 131, 178, 236)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/home' : (context) => const HomeScreen(),
        '/login' : (context) => const LoginScreen(),
        '/signup' : (context) => const SignupScreen(),
      },
    );
  }
}
