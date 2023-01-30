import 'package:fitt_app/LogInPage.dart';
import 'package:flutter/material.dart';


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

      body: Center(
        child: Column(
          children: <Widget>[

            Container(// LogIn Button
              margin: EdgeInsets.only(top: 550.0, bottom: 5.0),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Color(0xff95E1E9).withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
                child: Text(
                  'Get Started',
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









