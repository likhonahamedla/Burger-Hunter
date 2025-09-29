import 'package:burger_hunter/pages/bottomNavi.dart';
import 'package:burger_hunter/pages/homepage/homepage.dart';
import 'package:burger_hunter/pages/welcomepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger Hunter',
      home: Bottomnavi(),
    );
  }
}
