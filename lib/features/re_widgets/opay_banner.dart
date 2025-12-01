import 'package:flutter/material.dart';

class OpayBanner extends StatelessWidget {
  const OpayBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: double.infinity,
      child: Center(
        //add image here
        child: Image.asset('assets/images/OpayBanner.png', fit: BoxFit.cover),
      ),
    );
  }
}
