import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/Day3/DataModule.dart';
import 'package:iti/Day4/FireBaseTodo/cubit/states.dart';
import 'package:iti/Day4/FireBaseTodo/model/todo_model.dart';



class TodoCubit extends Cubit<TodoStates> {
  TodoCubit() : super(TodoInitialState());

  static TodoCubit get(context) => BlocProvider.of(context);


  void CreateTask({
    required String text,
    required String datetime,
  }) {
    emit(StartAddTaskState());
    todoModel model = todoModel(
      datetime: datetime,
      text: text,
    );
    FirebaseFirestore.instance.collection('tasks').add(model.tomap()).then((
        value) {
      getTask();
      emit(AddTaskSuccessState());
    }).catchError((error) {
      emit(AddTaskFailState());
    });
  }

  List <todoModel> tasks = [];

  void getTask() {
    tasks = [];
    FirebaseFirestore.instance.collection('tasks').get().then((value) {
      value.docs.forEach((element) {
        tasks.add(todoModel.fromJson(element.data()));
      });
    }).catchError((error) {
      emit(GetTaskLoadDataErrorState());
    });
  }
}