import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(backgroundColor: Colors.black38,leading:Icon(Icons.arrow_back) ,actions: [
        Icon(Icons.heart_broken),
        SizedBox(width: 20,),
        Icon(Icons.list),
        SizedBox(width: 20,),
      ],),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 60,
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
              Text("Ahmed Khalaf Tawfeeq",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
              SizedBox(height: 10,),
              Text("Create greate Projects",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.5)),),
              SizedBox(height: 10,),
              Text("@TWworks",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Colors.white),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image.network(
                    'https://previews.123rf.com/images/dreamcursor/dreamcursor1305/dreamcursor130500042/19851248-twitter-logo-on-computer-screen.jpg?fj=1',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10,),
                  Image.network(
                    'https://play-lh.googleusercontent.com/kMofEFLjobZy_bCuaiDogzBcUT-dz3BBbOrIEjJ-hqOabjK8ieuevGe6wlTD15QzOqw',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10,),
                  Image.network(
                    'https://previews.123rf.com/images/dreamcursor/dreamcursor1305/dreamcursor130500042/19851248-twitter-logo-on-computer-screen.jpg?fj=1',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),

                ],
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    children: [
                      Image.network(
                        'https://image.shutterstock.com/image-vector/follower-notification-social-media-icon-260nw-1188021835.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Text('1.3 K',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 20),),
                      Text('Followers',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white.withOpacity(.5),fontSize: 20),)


                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Image.network(
                        'https://previews.123rf.com/images/dreamcursor/dreamcursor1305/dreamcursor130500042/19851248-twitter-logo-on-computer-screen.jpg?fj=1',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Text('1.3 K',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 20),),
                      Text('Followers',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white.withOpacity(.5),fontSize: 20),)


                    ],
                  )

                ],
              )


            ],
          )
        ],
      ),
    );
  }
}
