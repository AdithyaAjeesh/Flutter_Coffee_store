import 'package:flutter/material.dart';
import 'package:flutter_coffee_store_app/veiw/screens/home_screen.dart';
import 'package:flutter_coffee_store_app/veiw/screens/shopping_screen.dart';
import 'package:flutter_coffee_store_app/veiw/screens/store_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const ShoppingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store_outlined,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Bag',
          ),
        ],
        showSelectedLabels: true,
        elevation: 1,
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
