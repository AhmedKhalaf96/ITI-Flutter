import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Details.dart';
import 'data.dart';

class Checkin extends StatelessWidget {
  ChickenMenu chicken=new ChickenMenu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Checkin Meals',style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=>item(chicken,index,context),
            separatorBuilder: (context,index)=>SizedBox(height: 10,),
            itemCount:chicken.ChekinMealList.length ),
      ),
    );
  }
}
Widget item(ChickenMenu chicken,index,context)=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MealDetails(chicken.ChekinMealList[index].pic,chicken.ChekinMealList[index].name,chicken.ChekinMealList[index].price)));
    },

    child: Container(
        height: 200,
        child: Column(
          children: [
            Image.network('${chicken.ChekinMealList[index].pic}',height: 150,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${chicken.ChekinMealList[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5),
        )),
  ),
);

