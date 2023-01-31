import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'LogInPage.dart';


class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {

  bool _showPassword= false;

  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff11b4bb), Color(0xffa7f5f8)])),

      child: Scaffold(
        backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              //email
              Container(
                margin: EdgeInsets.only(top: 100.0),
                padding: EdgeInsets.only(left: 30.0 ,right: 30.0),
                child: TextFormField(
                  controller: _emailTextController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff11b4bb)
                          .withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff11b4bb)
                          .withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),


              //username
              Container(
                padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
                child: TextFormField(
                  controller: _userNameTextController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff11b4bb)
                          .withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff11b4bb)
                          .withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Username',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),


              //pass
              Container(
                padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
                child: TextFormField(
                  controller: _passwordTextController,
                  style: TextStyle(color: Colors.white),
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff11b4bb)
                          .withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff11b4bb)
                          .withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.white),
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword? Icons.visibility : Icons.visibility_off),
                      onTap: (){
                        setState(() {
                          _showPassword = !_showPassword;
                        });

                      },
                    ),
                  ),
                ),
              ),


              Container(// LogIn Button
                margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xff11b4bb).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                        .then((value) {
                      print("good");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogInPage()));
                    },
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      ),
    );

  }
}




