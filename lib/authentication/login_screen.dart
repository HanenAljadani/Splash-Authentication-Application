import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
        height = 450;
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
      
      child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: height,
          width: width,
        
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
            //color: const Color.fromARGB(83, 131, 178, 236),
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: height != 450
                ? null
                : Padding(
            padding: const EdgeInsets.all(33),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Center(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color:  Color.fromARGB(255, 20, 50, 120),
                    ),
                  ),
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      prefixIcon:  new Icon(Icons.email, color: Color.fromARGB(255, 43, 92, 205)),
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
                    prefixIcon:  new Icon(Icons.password, color: Color.fromARGB(255, 43, 92, 205)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                ),
               /* const Center(
                  child: Checkbox(
                   /* value: isRemeberMe,
                    checkColor: Colors.blue,
                    activeColor: Colors.white,
                    onChanged: (value){
                      setState((){
                        isRemeberMe =value;
                      });
                    },*/
                    ),
                /*Text('Remeber me',
                style: TextStyle(
                
                ),)*/

                ),*/
                InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/signup');
                          },
                          child:
                              const Text("Don't have an account? SignUp here",
                               style: TextStyle(
                             decoration: TextDecoration.underline,
                            color: Color.fromARGB(255, 0, 0, 0),
                             ),
                              ),
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
                            if (_email.isNotEmpty && _password.isNotEmpty) {
                              Navigator.of(context).pushNamed('/home');
                            } else {
                              print("Error");
                            }
                  },
                  child: const Text("Login",
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
    ),
    );
  }
}