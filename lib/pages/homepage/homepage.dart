import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:burger_hunter/elements/textAssets.dart';
import 'package:burger_hunter/pages/homepage/burger_item.dart';
import 'package:burger_hunter/pages/homepage/categories.dart';
import 'package:flutter/material.dart';

import '../bottomNavi.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280,
          child: Stack(
            children: [
              Container(color: Colors.transparent),
              Container(
                color: color,
                height: MediaQuery.of(context).size.height / 3.9,
              ),
              Positioned(
                top: 40,
                right: 20,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.list_sharp, size: 30, color: Colors.white),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('asset/profile.png'),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 120,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '⚲ Location ➤',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      '🏠︎ 30/2 LA road Mymensingh',
                      style: text(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 200,
                left: 25,
                right: 25,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(17),
                    fillColor: Colors.grey[200],
                    hintText: 'What do you want?',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black45,
                      size: 25,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                'Categories',
                style: text(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
              Categories(),
              Text(
                "Popular",
                style: text(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
              BurgerItem(),
            ],
          ),
        ),
      ],
    );
  }
}
