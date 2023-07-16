import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  double height = 0;
  double width = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        height = 440;
        width = 340;
      });
    });
    Future.delayed(Duration(milliseconds: 700), () {
      setState(() {
        height = 650;
        width = 350;
      });
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
      /*const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          'assets/profile.png', width: 100.0, height: 100.0,
        ),
      ],
    ),*/
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: height,
          width: width,
       
        child: Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white ,  
            borderRadius: BorderRadius.circular(25),
            
          ),
          child: height != 650
                ? null
                :Padding(
            padding: const EdgeInsets.all(33),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Center(
                  child: Text(
                    "             Signup \n     Create new account ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 20, 50, 120),
                    ),
                  ),
                ),
                /*const Center(
                  child: Text(
                    "Create new account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromARGB(255, 43, 92, 205),
                    ),
                  ),
                ),*/
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      prefixIcon: new Icon(Icons.email, color: Color.fromARGB(255, 43, 92, 205)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    prefixIcon:   new Icon(Icons.password, color: Color.fromARGB(255, 43, 92, 205)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                ),
                TextFormField(
                  controller: conpassword,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  
                  decoration: InputDecoration(
                    label: const Text("Confirm Password"),
                    prefixIcon: new Icon(Icons.password, color: Color.fromARGB(255, 43, 92, 205)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    
                  ),
                ),
                
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: const Text("Have an account? Login here",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),),
                ),
                SizedBox(
                  width: 200, // <-- Your width
                  height: 50, // <-- Your height
                   child:ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       backgroundColor: const Color.fromARGB(255, 43, 92, 205),
                       elevation: 5,
                 ),
                  onPressed: () {
                    String _email = email.text.toString();
                    String _password = password.text.toString();
                    String _conpassword = conpassword.text.toString();
                    if (_email.isNotEmpty && _password.isNotEmpty && _conpassword.isNotEmpty ) {
                      Navigator.of(context).pushNamed('/home');
                    } else {
                      print("Error");
                    }
                  },
                  child: const Text("Signup",
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                 
                ),
            ),
                   ],
            ),
          ),
        ),
        ),
      ),
    )
    );
  }
}