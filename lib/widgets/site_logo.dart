import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';


class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.ontap});
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Khaled Shalien",
      style: TextStyle(
      
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: CustomColor.yellowSecondary),
    );
  }
}
