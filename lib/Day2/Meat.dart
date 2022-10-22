import 'package:flutter/material.dart';

import 'Details.dart';
import 'data.dart';

class Meat extends StatelessWidget {
  MeatMenu meat=new MeatMenu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Meat Meals',style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=>item(meat,index,context),
            separatorBuilder: (context,index)=>SizedBox(height: 10,),
            itemCount:meat.MeatMealList.length ),
      ),
    );
  }
}
Widget item(MeatMenu meat,index,context)=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MealDetails(meat.MeatMealList[index].pic,meat.MeatMealList[index].name,meat.MeatMealList[index].price)));
      },
    child: Container(
        height: 200,
        child: Column(
          children: [
            Image.network('${meat.MeatMealList[index].pic}',height: 150,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${meat.MeatMealList[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5),
        )),
  ),
);

