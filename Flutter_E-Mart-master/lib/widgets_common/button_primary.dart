import 'package:flutter/material.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/consts/colors.dart';

class ButtonPrimary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ),
          );
        },
        child: Text(
          "GET STARTED",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: redColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
