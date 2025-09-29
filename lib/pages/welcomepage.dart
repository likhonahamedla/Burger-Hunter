import 'package:burger_hunter/elements/button.dart';
import 'package:burger_hunter/elements/textAssets.dart';
import 'package:flutter/material.dart';
import 'loginPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/welcome.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 40,
            right: 40,
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              child: Cname(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 60,
              ),
            ),
          ),
          Positioned(
            bottom: 110,
            left: 90,
            child: Button(
              buttonText: Text(
                'Get Started',
                style: text(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              buttonIcon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 30,
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
