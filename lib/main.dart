import 'package:flutter/material.dart';

import 'data&provider/catProvider.dart';
import 'myapp.dart';
import 'package:provider/provider.dart';

main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => CartProvider(),
      child: MyApp(),
    ),
  );
}
