import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/Day4/FireBaseTodo/NewTask.dart';
import 'package:iti/Day4/FireBaseTodo/cubit/cubit.dart';
import 'package:iti/Day4/FireBaseTodo/cubit/states.dart';
import 'package:iti/Day4/FireBaseTodo/model/todo_model.dart';

class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, TodoStates>(
        listener: (context, states) {},
        builder: (context, states) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(title: Text('Tasks'),centerTitle: true,
                actions: [
                  TextButton(onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  NewTask()));
                  } , child: Text('Add New',style: TextStyle(color: Colors.white,fontSize: 16),))
                ],

              ),
              body: (TodoCubit.get(context).tasks.isEmpty)
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                  itemCount: TodoCubit.get(context).tasks.length,
                  itemBuilder: (context, index) =>item(TodoCubit.get(context).tasks[index], index)
              ),
            ),
          );
        });
  }
  Widget item(
      todoModel task,
      index,
      ) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                        "${task.text}",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        "${task.datetime}",
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 30,
                      ),

                    ],
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey.withOpacity(.5), width: 5),
            )),
      );
}




