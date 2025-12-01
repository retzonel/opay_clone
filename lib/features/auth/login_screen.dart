import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:opay_clone/core/theme/app_colors.dart';
import 'package:opay_clone/core/theme/app_styles.dart';
import 'package:opay_clone/features/re_widgets/opay_banner.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(FluentIcons.arrow_left_24_filled),
        ),
        actions: [
          //help button at top right
          TextButton(
            onPressed: () {},
            child: Text(
              "Help",
              style: AppStyles.buttonTextStyle.copyWith(
                color: AppColors.javaColor,
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              OpayBanner(),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log in to your account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email or Phone number",
                      labelStyle: TextStyle(color: AppColors.javaColor),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: AppColors.javaColor,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: AppColors.javaColor,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    
                    children: [
                      Text(
                        "Lost your mobile number, ",
                        style: TextStyle(fontWeight: FontWeight.w200, fontSize: 11),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change Now",
                          style: TextStyle(color: AppColors.javaColor, fontSize: 11, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 50),

                  FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity, 50.0),
                      backgroundColor: AppColors.javaColor,
                      elevation: 0,
                    ),
                    child: Text("NEXT", style: AppStyles.buttonTextStyle),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
