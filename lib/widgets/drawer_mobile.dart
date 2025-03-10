import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/constants/nav_item.dart';


class DraweMobile extends StatelessWidget {
  const DraweMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
                child: IconButton(onPressed: () {
                  Navigator.of(context).pop();
                }, icon: const Icon(Icons.close)),
              ),
            ),
            for (int i = 0; i < navIcon.length; i++)
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                title: Text(navTitle[i]),
                titleTextStyle: const TextStyle(
                    color: CustomColor.whitePrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
                leading: Icon(navIcon[i]),
                onTap: () {
                  onNavItemTap(i);
                },
              )
          ],
        ),
      );
  }
}