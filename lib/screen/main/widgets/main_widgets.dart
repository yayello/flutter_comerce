import 'package:flutter/material.dart';

class MainWidgets {

  BottomNavigationBar navigationBar({
    required int currentIndex,
    required Function(int value) onTap,
  }) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined), label: 'category'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'my cart'),
      ],
      currentIndex: currentIndex,
      onTap: (value) {
        onTap(value);
      },
    );
  }
}
