import 'package:flutter/material.dart';
import 'package:nike_shoes/provider/functions.dart';
import 'package:nike_shoes/screens/onboeard_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => FunctionsData(),
    child: MaterialApp(
      title: 'Nike Shoes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SpaceGrotesk"
      ),
      home: OnboeardScreen(),
    ),
  ));
}


