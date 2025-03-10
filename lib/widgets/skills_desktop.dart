import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/constants/skill_item.dart';


class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platFormItem.length; i++)
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadiusDirectional.circular(5)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    leading: Image.asset(
                      platFormItem[i]["img"],
                      width: 26,
                    ),
                    title: Text(platFormItem[i]["title"]),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillsItem.length; i++)
                  Chip(
                    backgroundColor: CustomColor.bgLight2,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    label: Text(skillsItem[i]["title"]),
                    avatar: Image.asset(skillsItem[i]["img"]),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
