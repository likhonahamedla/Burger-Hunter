import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:burger_hunter/elements/textAssets.dart';
import 'package:burger_hunter/pages/detailsPages/add_to_cart_button.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  Map<String, String> data;
  DetailsPage({super.key, required this.data});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _isCount = 0;

  itemRemove(int count) {
    if (_isCount > 0) {
      setState(() {
        _isCount--;
      });
    }
  }

  itemAdd(int count) {
    setState(() {
      _isCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: color,
            height: MediaQuery.of(context).size.height / 2.5,
          ),
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.data['img']!)),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 18,
            child: IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 30,
                color: color,
              ),
              style: IconButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: Colors.white,
                shape: CircleBorder(),
              ),
            ),
          ),
          Container(),

          Positioned(
            top: 320,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Text(
                  widget.data['name']!,
                  style: text(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.data['title']!,
                      style: text(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: color,
                      ),
                    ),
                    Text(
                      widget.data['rating']!,
                      style: text(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: color,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.data['price']!,
                      style: text(
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        color: color,
                      ),
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        IconButton(
                          onPressed: () {
                            itemRemove(_isCount);
                          },
                          style: IconButton.styleFrom(
                            backgroundColor: color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          child: Text(
                            _isCount.toString(),
                            textAlign: TextAlign.center,
                            style: text(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: color,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            itemAdd(_isCount);
                          },
                          style: IconButton.styleFrom(
                            alignment: Alignment.center,
                            backgroundColor: color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: Icon(Icons.add, size: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Description',
                  textAlign: TextAlign.start,
                  style: text(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
                Text(
                  widget.data['description']!,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                addToCartButton(isCount: _isCount, widget: widget),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
