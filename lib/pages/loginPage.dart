import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:burger_hunter/elements/textAssets.dart';
import 'package:burger_hunter/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';

import '../elements/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPassword = true;
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Stack(
        children: [
          Container(color: Colors.white70),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 60, left: 80, bottom: 80),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Cname(
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          Positioned(
            top: 140,
            left: 120,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: color, width: 8),
              ),
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('asset/profile.png'),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 140,
            child: Text(
              'Login',
              style: text(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 40,
            right: 40,
            child: TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                prefix: Text('+880'),
                labelText: 'Enter your Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 40,
            right: 40,
            child: TextField(
              controller: passwordController,
              obscureText: _isPassword,
              decoration: InputDecoration(
                labelText: 'Enter your Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isPassword = !_isPassword;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye, size: 25),
                ),
              ),
            ),
          ),
          Positioned(
            top: 650,
            left: 130,
            child: Button(
              buttonText: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              buttonIcon: Icon(Icons.arrow_forward_sharp),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              onPressed: () {
                if (numberController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '⚠️Please enter Number & Password first⚠️',
                        style: text(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: color,
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
            ),
          ),
          Positioned(
            top: 730,
            left: 105,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Create a new Account',
                style: text(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
