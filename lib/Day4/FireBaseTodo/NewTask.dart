import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/Day4/FireBaseTodo/TodoHome.dart';
import 'package:iti/Day4/FireBaseTodo/cubit/cubit.dart';
import 'package:iti/Day4/FireBaseTodo/cubit/states.dart';

class NewTask extends StatelessWidget {
   NewTask({Key? key}) : super(key: key);
  var taskcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit,TodoStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,elevation: 0.0,
            title: Text('Add Task',style: TextStyle(fontSize: 22,color: Colors.white,),),
            leading: InkWell(onTap:(){
              Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) =>  TodoHome())
              );
            },child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
            actions: [
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Expanded(
                  child: TextFormField(
                      controller: taskcontroller,
                      decoration: InputDecoration(
                        hintText: 'whats in your mind ...',
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextButton(
                  child: Text('Add Task',style: TextStyle(
                      fontSize: 21,fontWeight: FontWeight.bold
                  ),),
                  onPressed: (){
                      TodoCubit.get(context).CreateTask(text: taskcontroller.text, datetime: DateTime.now().toString());
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>  TodoHome())
                    );
                  },
                ),


              ],
            ),
          ),
        );
      },
    );
  }
}
