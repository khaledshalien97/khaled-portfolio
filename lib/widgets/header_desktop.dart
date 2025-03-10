import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/constants/nav_item.dart';
import 'package:khaled_portfolio/styles/style.dart';
import 'package:khaled_portfolio/widgets/site_logo.dart';


class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onMenuTap});
final Function(int) onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            ontap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitle.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {
                    onMenuTap(i);
                  },
                  child: Text(
                    navTitle[i],
                    style: const TextStyle(
                        fontSize: 16,
                        color: CustomColor.whitePrimary,
                        fontWeight: FontWeight.w500),
                  )),
            )
        ],
      ),
    );
  }
}
