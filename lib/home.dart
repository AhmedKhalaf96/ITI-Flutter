import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String Name="A7med";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(title: Text('First Day',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),centerTitle: true,backgroundColor: Colors.deepOrangeAccent,
        leading:Icon(Icons.home) ,elevation: 4.5,shadowColor: Colors.black,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(Name,style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
