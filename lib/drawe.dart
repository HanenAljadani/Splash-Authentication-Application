import 'package:flutter/material.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/m.png'),
            ),
            accountName: Text("Hanen Aljadani"),
            accountEmail: Text("hanen@gmail.com"),
          ),
          
          ListTile(
            title: const Text("Home Screen"),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            splashColor: const Color.fromARGB(83, 131, 178, 236),
          ),

          ListTile(
            title: const Text("Todo List Api App"),
            onTap: () {
              Navigator.of(context).pushNamed('/todoList');
            },
            splashColor: const Color.fromARGB(83, 131, 178, 236),
          ),
          
        ],
      ),
    );
  }
  }
