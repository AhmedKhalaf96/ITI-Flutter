import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  String pic;
  String name;
  int price;
   MealDetails(this.pic, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${name}',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
          centerTitle: true,iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.blue.withOpacity(.8)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.network('${pic}',height: 300,)),
          SizedBox(height: 20,),
          Text('${name}',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
          SizedBox(height: 20,),
          Text('Price : ${price} \$',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),

        ],
      ),
    );
  }
}
