class ChickenMenu{
  List<Meal> ChekinMealList=[
    Meal(id:1, name:'Chickinn Breast Plate' , price:70,pic:'https://i0.wp.com/www.onceuponachef.com/images/2020/05/best-grilled-chicken-scaled.jpg?resize=760%2C1050&ssl=1'),
    Meal(id:2, name:'Chickinn Fajita Plate', price:210,pic:'https://www.budgetbytes.com/wp-content/uploads/2022/09/Honey-Chipotle-Chicken-V1-768x1024.jpg'),
    Meal(id:3, name:'Shish Tawook Plate', price:140,pic:'https://assets.epicurious.com/photos/5732526f1877f76a0e20831c/1:1/w_1600,c_limit/EP_05102016_PeruvianStyleRoastChicken_recipe_.jpg'),
    Meal(id:4, name:'Chickinn Breast Plate' , price:70,pic:'https://i0.wp.com/www.onceuponachef.com/images/2020/05/best-grilled-chicken-scaled.jpg?resize=760%2C1050&ssl=1'),
    Meal(id:5, name:'Chickinn Fajita Plate', price:210,pic:'https://www.budgetbytes.com/wp-content/uploads/2022/09/Honey-Chipotle-Chicken-V1-768x1024.jpg'),
    Meal(id:6, name:'Shish Tawook Plate', price:140,pic:'https://assets.epicurious.com/photos/5732526f1877f76a0e20831c/1:1/w_1600,c_limit/EP_05102016_PeruvianStyleRoastChicken_recipe_.jpg'),

  ];
}
class MeatMenu{
  List<Meal> MeatMealList=[
    Meal(id:1, name:'Caprese Balsamic Salad' , price:70,pic:'https://www.foodandwine.com/thmb/lU8eei6NuuqMzaf29hPpM0KN82o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/garlic-butter-prime-rib-FT-RECIPE0621-fca73e5fa8e046b0b03982757db51628.jpg'),
    Meal(id:2, name:'Ginger and Cilantro Beef Salad', price:210,pic:'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/6/19/0/WU0501H_peppercorn-roasted-beef-tenderloin-recipe_s4x3.jpg.rend.hgtvcom.1280.720.suffix/1552487731049.jpeg'),
    Meal(id:3, name:'Fusilli Tuna Salad', price:140,pic:'https://thecuriousplate.com/wp-content/uploads/2020/12/Roasted-Beef-Tenderloin-with-Maple-Mustard-Glaze-www.climbinggriermountain.com-2-600x900.jpg'),
    Meal(id:4, name:'Caprese Balsamic Salad' , price:70,pic:'https://www.foodandwine.com/thmb/lU8eei6NuuqMzaf29hPpM0KN82o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/garlic-butter-prime-rib-FT-RECIPE0621-fca73e5fa8e046b0b03982757db51628.jpg'),
    Meal(id:5, name:'Ginger and Cilantro Beef Salad', price:210,pic:'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/6/19/0/WU0501H_peppercorn-roasted-beef-tenderloin-recipe_s4x3.jpg.rend.hgtvcom.1280.720.suffix/1552487731049.jpeg'),
    Meal(id:6, name:'Fusilli Tuna Salad', price:140,pic:'https://thecuriousplate.com/wp-content/uploads/2020/12/Roasted-Beef-Tenderloin-with-Maple-Mustard-Glaze-www.climbinggriermountain.com-2-600x900.jpg'),

  ];
}

class Meal{
  int id;
  String name;
  int price;
  String pic;
  Meal({required this.id,required this.name,required this.price,required this.pic});
}