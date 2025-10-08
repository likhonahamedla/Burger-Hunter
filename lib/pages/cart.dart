import 'package:burger_hunter/data&provider/catProvider.dart';
import 'package:burger_hunter/data&provider/data.dart';
import 'package:burger_hunter/elements/button.dart';
import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:flutter/material.dart';

import '../elements/textAssets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: color,
            padding: EdgeInsets.only(top: 60, left: 15, right: 15, bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('asset/profile.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cart',
                  style: text(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: color,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      cart.clearCart();
                    });
                  },
                  icon: Icon(Icons.delete, size: 30),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.separated(
              itemCount: cart.cartItem.length,
              itemBuilder: (context, index) {
                var itrm = cart.cartItem[index];
                return Card(
                  color: color.withOpacity(0.8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          itrm['img'],
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          spacing: 15,
                          children: [
                            Text(
                              itrm['name'],
                              style: text(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Price:💲${itrm['total'].toStringAsFixed(2)}",
                              style: text(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Text(
                              'X${itrm['count']}',
                              style: text(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  cart.cartRemove(index);
                                });
                              },
                              icon: Icon(
                                Icons.remove_circle,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: Column(
                spacing: 10,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: text(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '💲${cart.totalPrice.toStringAsFixed(2)}',
                        style: text(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Button(
                    buttonText: Text(
                      'Payment',
                      style: text(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    buttonIcon: Icon(
                      Icons.arrow_forward_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 110,
                      vertical: 20,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
