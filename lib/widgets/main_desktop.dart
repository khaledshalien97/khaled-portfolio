import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/constants/images_path.dart';


class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key, required this.onPressedContact});



final Function(int) onPressedContact;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(maxHeight: 700.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi\nI'm Khaled Shalien\nA Flutter Developer",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    height: 1.5),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.yellowPrimary,
                    ),
                    onPressed: (){
                      onPressedContact(3);
                    },
                    child: const Text(
                      "Contact me",
                      style: TextStyle(
                          color: CustomColor.whitePrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          Image.asset(
            myPhoto,
            width: screenWidth / 2.5,
          )
        ],
      ),
    );
  }
}
