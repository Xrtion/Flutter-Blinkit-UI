import 'package:blinkit_clone/repository/screens/Home/Homescreen.dart';
import 'package:blinkit_clone/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_clone/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_clone/repository/screens/print/printscreen.dart';
import 'package:blinkit_clone/repository/widgets/Uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List <Widget>pages= [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Uihelper.CustomImage(img: "home 1.png"), label: "Home"),
        BottomNavigationBarItem(icon: Uihelper.CustomImage(img: "shopping-bag 1.png"), label: "Cart"),
        BottomNavigationBarItem(icon: Uihelper.CustomImage(img: "category 1.png"), label: "Category"),
        BottomNavigationBarItem(icon: Uihelper.CustomImage(img: "printer 1.png"), label: "Print"),
      ], type: BottomNavigationBarType.fixed, currentIndex: currentIndex, onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },),
    );
  }
}