import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  Widget pageView({
    required List<String> imageList,
    required PageController pageController,
  }) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Image.asset(
            imageList[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: imageList.length,
        controller: pageController,
      ),
    );
  }

  Widget indicator({
    required int length,
    required int currentIndex,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(length, (index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 10,
            width: currentIndex == index ? 20 : 10,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: currentIndex == index ? Colors.black54 : Colors.grey.shade400,
              borderRadius: BorderRadius.circular(5),
            ),
          );
        })
      ],
    );
  }
}
