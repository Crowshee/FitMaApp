import 'package:flutter/material.dart';
import 'SignUpPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Color(0xff95E1E9)),
      home: FirstScreen(
      ),
    );
  }
}

bool _showPassword = false;



  class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff0D3728),Color(0xff3D5E52)])),



child: Scaffold(
  backgroundColor: Colors.transparent,

      body: Center(//username Textfield
        child: Column(
          children: <Widget>[


           Container(
              margin: EdgeInsets.only(top: 250.0, bottom: 30.0),
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff95E1E9).withOpacity(0.5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff95E1E9).withOpacity(0.5)),
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),


            Container( // Password Textfield
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff95E1E9).withOpacity(0.5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff95E1E9).withOpacity(0.2)),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: GestureDetector(
                    child: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
                    onTap: (){

                    },
                  ),
                ),
              ),
            ),

            Container(  //Forgot Pass Button
                margin: EdgeInsets.only(left: 220.0),
                child: TextButton(
                  onPressed: (){
                  },
                  child: Text('Forgot Password?',
                  style: TextStyle( color: Color(0xff64d9e7))),

                ),
            ),
            Container(// LogIn Button
              margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Color(0xff95E1E9).withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),


            Divider(
              thickness: 1,
              indent: 30,
              endIndent: 30,
              color: Colors.white,
            ),

            Container( // SignUp Button
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Color(0xff95E1E9).withOpacity(0.2), borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                child: Text('SIGN UP',
                    style: TextStyle(color: Colors.white, fontSize: (25))),

                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },

              ),
            ),
          ],

        ),
      ),
),
    );
  }
}






