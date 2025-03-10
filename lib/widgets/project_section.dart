import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/utils/project_utils.dart';
import 'package:khaled_portfolio/widgets/project_card.dart';


class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenWidth,
      child: Column(
        children: [
          const Text(
            "Work Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints:const BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectsUitls.length; i++)
                  ProjectCardWidget(
                    projectUtils: workProjectsUitls[i],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Hobby Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const Text(
            "UI & Functionality Projects",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints:const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hoppyProjectsUitls.length; i++)
                  ProjectCardWidget(
                    projectUtils: hoppyProjectsUitls[i],
                  ),
              ],
            ),
          ),
        const  SizedBox(height: 80,)
,           const Text(
            "UI-Only Projects",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints:const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < uiProjectsUitls.length; i++)
                  ProjectCardWidget(
                    projectUtils: uiProjectsUitls[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
