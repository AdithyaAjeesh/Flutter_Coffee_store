import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_coffee_store_app/veiw/startup_screens/login_screen.dart';
import 'package:flutter_coffee_store_app/veiw/widgets/bottom_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLoginFunction();
    super.initState();
  }

  void checkLoginFunction() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isLoggedIn = preferences.getBool('key') ?? false;
    if (isLoggedIn == true) {
      Timer(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const BottomNavBarWidget()));
      });
    } else if (isLoggedIn == false) {
      Timer(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Coffee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            Container(
              height: 45,
              width: 100,
              margin: const EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: const Text(
                'Store',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
