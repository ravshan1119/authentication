import 'package:authentication/ui/auth/widgets/universal_input.dart';
import 'package:authentication/ui/welcome_screen/welcome_screen.dart';
import 'package:authentication/ui/widgets/global_btn.dart';
import 'package:authentication/utils/app_colors.dart';
import 'package:authentication/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const WelcomeScreen();
                          }));
                        },
                        child: SvgPicture.asset(AppImages.arrow)),
                  ],
                ),
                SizedBox(
                  height: height * (20 / 812),
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create account",
                      style: TextStyle(
                        fontSize: height>600?30:28,
                        fontWeight: FontWeight.w600,
                        color: AppColors.C_1F5460,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * (16 / 812),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign up to get started!",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.C_879EA4,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * (36 / 812),
                ),
                UniversalInput(
                    title: "",
                    hintText: "Email or username",
                    type: TextInputType.emailAddress),
                const SizedBox(
                  height: 24,
                ),
                UniversalInput(
                    title: "",
                    hintText: "Email address",
                    type: TextInputType.emailAddress),
                const SizedBox(
                  height: 24,
                ),
                UniversalInput(
                    isPassword: true,
                    title: "",
                    hintText: "Password",
                    type: TextInputType.visiblePassword),
                const SizedBox(
                  height: 16,
                ),
                UniversalInput(
                    isPassword: true,
                    title: "",
                    hintText: "Confirm password",
                    type: TextInputType.visiblePassword),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.C_1F5460),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                GlobalBtn(
                    title: "Log in", color: AppColors.C_FFCA42, onTap: () {}),
                GlobalBtn(
                  title: "Log in using Apple",
                  color: AppColors.C_000000,
                  onTap: () {},
                  textColor: AppColors.white,
                  icon: AppImages.apple,
                ),
                GlobalBtn(
                  title: "Log in using Google",
                  color: AppColors.C_F0F5F2,
                  onTap: () {},
                  textColor: AppColors.C_10405A,
                  icon: AppImages.google,
                ),
                // const Spacer(),
                const Text(
                  "Already member? Log in",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.C_1F5460),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
