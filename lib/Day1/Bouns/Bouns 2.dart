
import 'package:flutter/material.dart';

class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  bool first=false;
  String result="";
  String plac1="";
  String plac2="";
  String plac3="";
  String plac4="";
  String plac5="";
  String plac6="";
  String plac7="";
  String plac8="";
  String plac9="";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(child: Text("XO Game" ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac1='X';
                          }else{
                            plac1='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                         height: 200,
                        child: Center(child: Text("${plac1}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac2='X';
                          }else{
                            plac2='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac2}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac3='X';
                          }else{
                            plac3='O';
                          }
                          first=!first;
                          res();
                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac3}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac4='X';
                          }else{
                            plac4='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac4}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac5='X';
                          }else{
                            plac5='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac5}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac6='X';
                          }else{
                            plac6='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac6}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac7='X';
                          }else{
                            plac7='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac7}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac8='X';
                          }else{
                            plac8='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac8}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(first == true){
                            plac9='X';
                          }else{
                            plac9='O';
                          }
                          first=!first;
                          res();

                        });
                      },
                      child: Container(
                        height: 200,
                        child: Center(child: Text("${plac9}" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(child: Text("${result}" ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),)),
              ElevatedButton(onPressed: (){
                setState(() {
                  plac1='';plac2='';plac3='';
                  plac4='';plac5='';plac6='';
                  plac7='';plac8='';plac9='';
                  result='';

                });
              }, child: Text('Reset Game'))
            ],
          ),
        ),
      ),
    );
  }
  res(){
    if((plac1==plac2 && plac2==plac3 &&plac1!="") || (plac1==plac4 &&plac4==plac7&&plac1!="")
    ||(plac4==plac5 && plac5==plac6 &&plac4!="")||(plac7==plac8&&plac8==plac9 &&plac7!="")
        ||(plac2==plac5 &&plac5==plac8 &&plac2!="") ||(plac3==plac6 && plac6 ==plac9 &&plac3!="")
    ||(plac1==plac5&&plac5==plac9 && plac1!='')||(plac3==plac5 && plac5==plac7 && plac3!='')
    ){
      setState(() {
        result="Game Ended";
      });
    }
  }
}
