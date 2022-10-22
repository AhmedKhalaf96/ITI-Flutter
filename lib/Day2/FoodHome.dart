import 'package:flutter/material.dart';

class FoodHome extends StatelessWidget {
  const FoodHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Welcome To Our Resturant",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.withOpacity(.9)),
            )),
            SizedBox(
              height: 10,
            ),
            Image.network(
              'https://www.foodbusinessnews.net/ext/resources/2020/4/CoupleAtRestaurant_Lead.jpg?t=1587991293&width=1080',
              height: 300,
              width: double.maxFinite,
            )
          ],
        ),
      )),
    );
  }
}
