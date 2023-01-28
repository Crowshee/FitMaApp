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
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  labelText: 'Username',
                  hintText: 'Enter Username',
                ),
              ),
            ),


            Container( // Password Textfield
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0),
              child: TextFormField(
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
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
                  style: TextStyle( color: Colors.blue),),

                ),
            ),
            Container(             // LogIn Button
              margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xff267D98), borderRadius: BorderRadius.circular(10)),
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
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xff267D98), borderRadius: BorderRadius.circular(10)
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






