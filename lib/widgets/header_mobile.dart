import 'package:flutter/material.dart';
import 'package:khaled_portfolio/styles/style.dart';
import 'package:khaled_portfolio/widgets/site_logo.dart';


class HeaderMobile extends StatelessWidget {
   const HeaderMobile({super.key, this.onLogoTap,  this.onMenuTap});
final VoidCallback? onLogoTap;
final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 50, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            ontap:onLogoTap,
          ),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
