import 'package:nike_shoes/screens/cart_screen.dart';
import 'package:nike_shoes/screens/home_screen.dart';
import 'package:nike_shoes/screens/notfication_screen.dart';
import 'package:nike_shoes/screens/profileScreen.dart';

final List<Map<String, dynamic>> items = [
  {'image': 'assets/nike1.png', 'type': 'Lifestyle'},
  {'image': 'assets/nike2.png', 'type': 'Basketball'},
  {'image': 'assets/nike3.png', 'type': 'Sports'},
];

final List<Map<String, dynamic>> shoesitems = [
  {
    'image': 'assets/nike1.png',
    'type': "Men's Shoes",
    'name': 'Creter Impact',
    'price': '\$19.9'
  },
  {
    'image': 'assets/nike2.png',
    'type': "Men's Shoes",
    'name': 'Air Max',
    'price': '\$55'
  },
  {
    'image': 'assets/nike3.png',
    'type': "Men's Shoes",
    'name': 'Nike Air Impact',
    'price': '\$82.9'
  },
  {
    'image': 'assets/nike4.png',
    'type': "Men's Shoes",
    'name': 'Nike Creter Impact',
    'price': '\$39.9'
  },
];

final List screns = [
  HomeScreen(),
  Profilescreen(),
  CartScreen(),
  NotficationScreen()
  
];
