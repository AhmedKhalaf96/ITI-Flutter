import 'package:flutter/material.dart';

import 'Category.dart';
import 'FoodHome.dart';
import 'Meat.dart';
import 'chekin.dart';

class FoodLayout extends StatefulWidget {
  @override
  State<FoodLayout> createState() => _FoodLayoutState();
}

class _FoodLayoutState extends State<FoodLayout> {
  int current= 0;

  List<Widget>screens = [
    FoodHome(),
    Category(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Resturant',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,iconTheme: IconThemeData(color: Colors.white),

        backgroundColor: Colors.blue.withOpacity(.9),),
      drawer: Drawer(backgroundColor: Colors.blue.withOpacity(.7),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Welcom A7med',style: TextStyle(color: Colors.white,fontSize: 24,),),
              SizedBox(height: 80,),
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Checkin()));
                      },
                      child: Text('+  Chicken Meals',style: TextStyle(color: Colors.white,fontSize: 24,decoration: TextDecoration.underline,),)),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Meat()));
                      },
                      child: Text('+  Meat Meals',style: TextStyle(color: Colors.white,fontSize: 24,decoration: TextDecoration.underline,),)),

                ],
              ),

            ],
          ),
        ),
      ),
      ),
      body: screens[current],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[600],
        backgroundColor:Colors.white,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        onTap:(ind){
          setState(() {
            current = ind;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.apps),
            label: "Category",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],

      ),

    );
  }
}
