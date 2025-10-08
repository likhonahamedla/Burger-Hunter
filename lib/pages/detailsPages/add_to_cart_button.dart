import 'package:burger_hunter/data&provider/catProvider.dart';
import 'package:burger_hunter/elements/button.dart';
import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:burger_hunter/elements/textAssets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'details.dart';

class addToCartButton extends StatelessWidget {
  const addToCartButton({super.key, required int isCount, required this.widget})
    : _isCount = isCount;

  final int _isCount;
  final DetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (ctx) {
        return Button(
          buttonText: Text(
            'Add to cart',
            style: text(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          buttonIcon: Icon(
            Icons.add_shopping_cart_sharp,
            size: 30,
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          onPressed: () {
            if (_isCount == 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: Duration(milliseconds: 500),
                  content: Text(
                    'Please add first',
                    style: text(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            } else {
              Provider.of<CartProvider>(
                context,
                listen: false,
              ).addItem(widget.data, _isCount);

              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (dialogContext) => AlertDialog(
                  title: Text(widget.data['name']!),
                  content: Text(
                    'Successfully Added',
                    style: text(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                        Navigator.pop(context);
                      },
                      child: Text(
                        'OK',
                        style: text(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: color,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        );
      },
    );
  }
}
