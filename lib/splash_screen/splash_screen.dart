import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), (){

      Navigator.of(context).pushNamed('/login');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(

     decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [ Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 43, 92, 205)],
    ),
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,


      body: Center(

      child: Container(
          height: 320,
          width: 280,
          decoration: BoxDecoration(
            color: const Color.fromARGB(148, 255, 255, 255),    
            borderRadius: BorderRadius.circular(40),
            
          ),
     
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/s.jpeg'),
            const CircularProgressIndicator(),
            ],
        ),
        ),
      ),
      ),
  
    );
  }
}