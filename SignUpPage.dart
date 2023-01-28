import 'package:fitt_app/main.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 250.0),
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Email',
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter Username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0 ,right: 30.0, top: 20.0, bottom: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 30,
              endIndent: 30,
              color: Colors.amber,
            ),

            Container( // SignUp Button
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)
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
    );
  }
}




