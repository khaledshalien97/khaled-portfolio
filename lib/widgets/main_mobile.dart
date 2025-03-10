import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/constants/images_path.dart';


class MainMobile extends StatelessWidget {
  const MainMobile({super.key, required this.onPressedContact});

  final Function(int) onPressedContact;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ]).createShader(bounds);
              },
              blendMode: BlendMode.srcOver,
              child: Image.asset(
                myPhoto,
                width: screenWidth,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Hi\nI'm Khaled Shalien\nA Flutter Developer",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                  height: 1.5),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 190,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        CustomColor.yellowPrimary, // Set the background color
                  ),
                  onPressed: () {
                    onPressedContact(3);
                  },
                  child: const Text("Contact me",
                      style: TextStyle(color: CustomColor.whitePrimary))),
            ),
          ],
        ),
      ),
    );
  }
}
