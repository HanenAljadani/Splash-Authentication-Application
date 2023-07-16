import 'package:flutter/material.dart';

import '../drawe.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       
    decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [ Color.fromARGB(255, 255, 255, 255), Color.fromARGB(184, 43, 92, 205)],
    ),
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
      title: const Text("Welcome to our Cars Rental App",
      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color:  Color.fromARGB(255, 43, 92, 205),
                    ),
      ),
      
      centerTitle: true, 
      backgroundColor: Colors.white,
      ),
      drawer: const Drawe(),
      body: const Center(
          child :  Text("This App to rent the best cars in the world ;)"),
        ),
    ),
    );
  }
}


