import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,leading: Icon(Icons.arrow_back_ios,color: Colors.black),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: AlignmentDirectional.bottomStart,
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.orange,

                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
                  child: Text('Account Setting',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 60,
                      backgroundColor: Colors.blueGrey,
                      child: ClipOval(
                        child: Image.network(
                          'https://thumbs.dreamstime.com/z/professor-normal-attention-high-resolution-d-render-character-cartoon-31141190.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,),
                        suffixIcon: Icon(Icons.edit)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email Address",
                          labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,),
                          suffixIcon: Icon(Icons.edit)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,),
                          suffixIcon: Icon(Icons.password)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 70,),
              Container(
                height: 70,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red
                ),
                child: Center(child: Text('LogOut',style: TextStyle(fontSize: 35,color: Colors.white),)),
              )


            ],
          ),
        ),
      ),
    );
  }
}
