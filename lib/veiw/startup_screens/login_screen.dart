// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_coffee_store_app/veiw/widgets/bottom_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController UserNameController = TextEditingController();
    final TextEditingController PassWordController = TextEditingController();

    Future<void> loginFunction() async {
      String UserName = UserNameController.text.trim();
      String PassWord = PassWordController.text.trim();
      if (UserName == 'asd' && PassWord == 'asd') {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setBool('key', true);
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const BottomNavBarWidget()));
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Errorr'),
              content: Text('userName or passWord is wrong'),
            );
          },
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: UserNameController,
                decoration: InputDecoration(
                    hintText: 'Enter Your UserName',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: PassWordController,
                decoration: InputDecoration(
                    hintText: 'Enter Your PassWord',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  loginFunction();
                  log('hi');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
