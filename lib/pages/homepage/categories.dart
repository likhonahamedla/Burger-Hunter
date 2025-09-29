import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('asset/burger.png'),
                  ),
                  SizedBox(width: 10),
                  Text('Burger', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('asset/coffee.png'),
                  ),
                  SizedBox(width: 10),
                  Text('Coffee', style: TextStyle(color: color)),
                ],
              ),
            ),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('asset/coke.png'),
                  ),
                  SizedBox(width: 10),
                  Text('Coke  ', style: TextStyle(color: color)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
