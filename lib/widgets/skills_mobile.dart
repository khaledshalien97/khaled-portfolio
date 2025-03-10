import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';


import '../constants/skill_item.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          for (int i = 0; i < platFormItem.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: CustomColor.bgLight2,
                  borderRadius: BorderRadius.circular(5.0)),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                leading: Image.asset(
                  platFormItem[i]["img"],
                  width: 26,
                ),
                title: Text(platFormItem[i]["title"]),
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillsItem.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight2,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  label: Text(skillsItem[i]["title"]),
                  avatar: Image.asset(skillsItem[i]["img"]),
                ),
            ],
          )
        ],
      ),
    );
  }
}
