import 'package:flutter/material.dart';
import 'package:flutter_comerce/screen/cart/cart_screen.dart';
import 'package:flutter_comerce/screen/category/category_screen.dart';
import 'package:flutter_comerce/screen/home/home_screen.dart';
import 'package:flutter_comerce/screen/main/widgets/main_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  HomeScreen homeScreen = const HomeScreen();
  CategoryScreen categoryScreen = const CategoryScreen();
  CartScreen carteScreen = const CartScreen();

  MainWidgets mainWidgets = MainWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Commerce App',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [homeScreen, categoryScreen, carteScreen],
      ),
      bottomNavigationBar: mainWidgets.navigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
