
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iti/Day3/Api/dio_helper.dart';
import 'package:iti/Day3/DataModule.dart';
import 'package:iti/Day3/EditTask.dart';
import 'package:iti/Day3/NewTask.dart';

class TaskHome extends StatefulWidget {
  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  APIHelper api = APIHelper();
  List<Task> Tasks = [];

  fetchData() async {
    var temp = await api.getaAllTasks();
    setState(() {
      Tasks = temp;
    });
  }

  @override
  void initState() {
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  NewTask()));

              },
              icon: Icon(Icons.add),color: Colors.white,)
        ],
      ),
      body: (Tasks.isEmpty)
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: Tasks.length,
              itemBuilder: (context, index) => item(Tasks[index], index)),
    );
  }

  void Delete(int id, BuildContext ctx) async {
    Fluttertoast.showToast(msg:'Delete Success',backgroundColor: Colors.red,textColor: Colors.white);
     await api.DeleteStudent(id);
    fetchData();
  }

  Widget item(
    Task task,
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
                    "${task.ID} : ${task.Title}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        "${task.CreatedDate}",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          Delete(Tasks[index].ID, context);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  EditTask(task: Tasks[index],)));
                          },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.grey,
                        ),
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
// ListTile(
// title: Text(Tasks[index].Title),
// subtitle: Text(Tasks[index].IsDone.toString()),
// trailing: Container(
// width: 150,
// child: Row(children: [
// // IconButton(
// //   onPressed: () {
// //     Navigator.of(context).pushNamed("/edit",
// //         arguments: {"id": Tasks[index].ID});
// //   },
// //   icon: Icon(
// //     Icons.edit,
// //     color: Colors.blue,
// //   ),
// // ),
// IconButton(
// onPressed: () {
// Delete(Tasks[index].ID, context);
// },
// icon: Icon(
// Icons.delete,
// color: Colors.red,
// ),
// ),
// // IconButton(
// //   onPressed: () {
// //     Navigator.of(context).pushNamed("/details",
// //         arguments: {"id": Tasks[index].ID});
// //   },
// //   icon: Icon(
// //     Icons.arrow_circle_right_outlined,
// //     color: Colors.black,
// //   ),
// // ),
// ]),
// ),
// );
