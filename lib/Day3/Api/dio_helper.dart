import 'package:http/http.dart';
import 'dart:convert';

import 'package:iti/Day3/DataModule.dart';

class APIHelper {
  AddTask(String Task) async {
    var url = Uri.https("api.mohamed-sadek.com", "/Task/POST");
    var res = await post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, Object>{
          "Title": Task,
        }));
    var data = jsonDecode(res.body);
    print(data);
  }

  EditTask(String Task,int id) async {
    var url = Uri.https("api.mohamed-sadek.com", "/Task/PUT", {'id': id.toString()});
    var res = await post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, Object>{
          "Title": Task,
          
        }));
    var data = jsonDecode(res.body);
    print(data);
  }


  Future<bool> DeleteStudent(int id) async {
    print(id);
    var url = Uri.https(
        "api.mohamed-sadek.com", "/Task/Delete", {'id': id.toString()});
    var res = await delete(url);
    return jsonDecode(res.body)["Success"] as bool;
  }

  Future<List<Task>> getaAllTasks() async {
    var url = Uri.https("api.mohamed-sadek.com", "/Task/Get");
    var res = await get(url);
    var data = jsonDecode(res.body)['Data'] as List;
    List<Task> list = data
        .map((item) => Task(
        ID: item["ID"],
        Title: item["Title"],
        IsDone: item["IsDone"],
        CreatedDate: item['CreatedDate'],
        ))
        .toList();
    return list;

  }

}
class Album {
  final int id;
  final String title;
  final bool IsDone;

  const Album({required this.id, required this.title,required this.IsDone});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['ID'],
      title: json['Title'],
      IsDone: json['IsDone'],

    );
  }
}