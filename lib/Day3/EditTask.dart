import 'package:flutter/material.dart';
import 'package:iti/Day3/Api/dio_helper.dart';
import 'package:iti/Day3/DataModule.dart';

class EditTask extends StatelessWidget {
  var taskcontroller=TextEditingController();
  APIHelper api = APIHelper();
  Task task;
  EditTask({required this.task});
  @override
  Widget build(BuildContext context) {
    taskcontroller.text=task.Title;
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
              child: Center(child: Text('Edit Task : ${task.ID}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
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
                  api.EditTask(taskcontroller.text,task.ID);

                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:BorderRadius.circular(10)
                  ),
                  height: 70,
                  width: 400,

                  child:Center(child: Text('Save Edit',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)) ,

                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
