import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HotelBank.dart';

class Room extends StatefulWidget {
  const Room({Key? key}) : super(key: key);

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  RoomsBank bank=new RoomsBank();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Room Reserve"),centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('${bank.getRoom().id}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('${bank.getRoom().name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  Text('${bank.getRoom().disc}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                  
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Image.network('${bank.getRoom().pic}',
                  width: 220,
                    height: 200,
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                getnext();
              }, child: Text("Next Room"),),
              SizedBox(width: 10,),
              ElevatedButton(onPressed: () {
                getback();
              }, child: Text("back Room"),)
            ],
          ),
        ],
      ),
    );
  }
  getnext(){
    setState(() {
      bank.movef();
    });
  }
  getback(){
    setState(() {
      bank.moveb();
    });
  }
}
