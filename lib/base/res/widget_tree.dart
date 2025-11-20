import 'package:flutter/material.dart';
import 'package:opay_clone/base/widgets/navbar.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Opay"),),
      body: Container(),
      bottomNavigationBar: NavBar(),
    );
  }
}