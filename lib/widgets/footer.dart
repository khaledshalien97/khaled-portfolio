import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';

class Fotter extends StatelessWidget {
  const Fotter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      alignment: Alignment.center,

      width: double.maxFinite,
      // color: Colors.blueGrey,
      child: const Text(
        "Made by Khaled Shalien with Flutter 3.10",
        style: TextStyle(
            fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),
      ),
    );
  }
}
