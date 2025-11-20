import 'package:flutter/material.dart';
import 'package:opay_clone/base/res/widget_tree.dart';
import 'package:opay_clone/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),

      home: WidgetTree(),
    );
  }
}
