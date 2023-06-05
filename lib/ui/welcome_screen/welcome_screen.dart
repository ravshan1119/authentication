import 'package:authentication/ui/auth/log_in/log_in.dart';
import 'package:authentication/ui/auth/sign_up/sign_up.dart';
import 'package:authentication/ui/widgets/global_btn.dart';
import 'package:authentication/utils/app_colors.dart';
import 'package:authentication/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_416F71,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.C_416F71,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Spedah",
              style: TextStyle(
                fontSize: height > 600 ? 24 : 18,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            SizedBox(
                height: 10,
                width: 10,
                child: SvgPicture.asset(AppImages.ellipse)),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                  height: height * (364 / 812),
                  child: Image.asset(AppImages.bicycle)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * (28 / 375), bottom: height * (24 / 812)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let’s \nget started",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height > 600 ? 48 : 32,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * (28 / 375)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Everything start from here",
                  style: TextStyle(
                    fontSize: height > 600 ? 16 : 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * (40 / 812),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: GlobalBtn(
                title: "Log in",
                color: AppColors.C_FFCA42,
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const LogIn();
                  }));
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: GlobalBtn(
                title: "Sign up",
                color: AppColors.C_D5E7D4,
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const SignUp();
                  }));
                }),
          ),
        ],
      ),
    );
  }
}
