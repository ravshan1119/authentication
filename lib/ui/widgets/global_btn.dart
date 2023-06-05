import 'package:authentication/utils/app_colors.dart';
import 'package:authentication/utils/app_images.dart';
import 'package:flutter/material.dart';

class GlobalBtn extends StatelessWidget {
  const GlobalBtn(
      {Key? key,
      required this.title,
      required this.color,
      required this.onTap,
      this.textColor = AppColors.C_10405A,
      this.icon = ""})
      : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onTap;
  final String icon;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Ink(
        height: height*(50/812),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color,
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: icon.isNotEmpty?Image.asset(icon):const Text(""),
                ),
                const SizedBox(width: 10,),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
