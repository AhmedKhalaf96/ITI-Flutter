import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iti/Day3/Api/dio_helper.dart';

class NewTask extends StatelessWidget {

  var taskcontroller=TextEditingController();
  APIHelper api = APIHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Task",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,

      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Center(child: Text('Add New Task',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: taskcontroller,
                decoration: InputDecoration(
                    labelText: "new Task",
                    labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,),
                    suffixIcon: Icon(Icons.edit)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: InkWell(
                onTap: (){
                  api.AddTask(taskcontroller.text);
                  Fluttertoast.showToast(msg:'Add Success',backgroundColor: Colors.green,textColor: Colors.white);

                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:BorderRadius.circular(10)
                    ),
                    height: 70,
                    width: 400,

                    child:Center(child: Text('Add New',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)) ,

                  ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
