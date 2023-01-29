
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {


  bool _showPassword = false;

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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 250.0),
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
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
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


            Container(
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
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
            Container(
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
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
                  labelText: 'Confirm Password',
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
                  'SIGN UP',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),


          ],
        ),
      ),
      ),
    );

  }
}




