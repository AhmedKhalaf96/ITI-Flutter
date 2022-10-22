import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/Day1/task1/FirstScreen.dart';
import 'package:iti/Day3/TaskHome.dart';
import 'package:iti/Day4/FireBaseTodo/TodoHome.dart';
import 'package:iti/Day4/FireBaseTodo/cubit/cubit.dart';
import 'package:iti/Day4/FireBaseTodo/observer.dart';
import 'Day1/Bouns/Bouns 2.dart';
import 'Day1/Bouns/Bouns1.dart';
import 'Day1/task2/Room.dart';
import 'Day2/FoodHome.dart';
import 'Day2/Layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  BlocOverrides.runZoned(
        () {
      runApp( MyApp());
    },
    blocObserver: MyBlocObserver(),
  );}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>TodoCubit()..getTask())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  TodoHome (),//First,Room,Login,game,FoodLayout
      ),
    );
  }
}

