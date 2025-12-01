import 'package:flutter/material.dart';
import 'package:opay_clone/core/theme/app_colors.dart';
import 'package:opay_clone/core/theme/app_styles.dart';
import 'package:opay_clone/features/auth/login_screen.dart';
import 'package:opay_clone/features/re_widgets/opay_banner.dart';
import 'package:opay_clone/features/screens/main_screen.dart';

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
                OpayBanner(),

                Container(
                  width: double.infinity,
                  height: 300,

                  child: Text("Welcome to Opay", textAlign: TextAlign.center),
                ),
                SizedBox(height: 150),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
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
