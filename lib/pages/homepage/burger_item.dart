import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:burger_hunter/elements/textAssets.dart';
import 'package:flutter/material.dart';

import '../../data&provider/data.dart';
import '../details.dart';

class BurgerItem extends StatelessWidget {
  const BurgerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item[index]['img']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 135, top: 10),
                          child: Text(
                            item[index]['rating']!,
                            style: text(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: color,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        item[index]['name']!,
                        style: text(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: color,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        item[index]['title']!,
                        style: text(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    height: 60,
                    width: 250,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      item[index]['price']!,
                      textAlign: TextAlign.center,
                      style: text(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(data: item[index]),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 15);
        },
      ),
    );
  }
}
