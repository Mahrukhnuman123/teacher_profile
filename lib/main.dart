import 'dart:async';
import 'package:college_link_app/teacher_profile/loginpage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'College App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  void initState(){
    super.initState();
    Timer( Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage(),));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff006769).withOpacity(0.9),
                  Color(0xFFA4EAFE).withOpacity(0.9),
                  Color(0xffa4c7c7).withOpacity(0.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top:-160,
            left: -160,
            child: Container(
              height: 440,
              width: 440,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200,left: 180),
                    child: Text('College Link',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 180),
                    child: Text('Spark your' ,style: TextStyle(fontSize: 25, color: Colors.white ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5,left: 180),
                    child: Text('Learning journey' ,style: TextStyle(fontSize: 25, color: Colors.white ),),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(900),
                color: Color(0xff006769).withOpacity(1),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 160,
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(900),
                color: Color(0xff006769).withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}