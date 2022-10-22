import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Meat.dart';
import 'chekin.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Checkin()));
              },
              child: Center(
                child: Image.network(
                  'https://www.foodandwine.com/thmb/Du_Nom6aP_jV8zSwSV3lxBNTRVM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/jamaican-jerk-chicken-FT-RECIPE0918-eabbd55da31f4fa9b74367ef47464351.jpg',
                  height: 250,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Text(
                'Checkin Meals',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Meat()));
              },
              child: Center(
                child: Image.network(
                  'https://i.insider.com/60ff19210d35a90018253dc5?width=1000&format=jpeg&auto=webp',
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Text(
                'Meat Meals',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
