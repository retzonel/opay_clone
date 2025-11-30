import 'package:flutter/material.dart';
import 'package:opay_clone/core/theme/app_colors.dart';
import 'package:opay_clone/core/theme/app_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.0),
                    backgroundColor: AppColors.javaColor,
                    elevation: 0,
                  ),
                  child: Text(
                    "Create a new account",
                    style: AppStyles.buttonTextStyle,
                  ),
                ),
                SizedBox(height: 15),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.0),
                    side: BorderSide(color: AppColors.javaColor),
                  ),
                  child: Text(
                    "Login",
                    style: AppStyles.buttonTextStyle.copyWith(
                      color: AppColors.javaColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
