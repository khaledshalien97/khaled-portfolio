import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/pages/project_details_page.dart';
import 'package:khaled_portfolio/utils/project_utils.dart';

import 'package:url_launcher/url_launcher.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.projectUtils,
  });

  final ProjectUtils projectUtils;


   void openAppStore() async {
    final Uri gitHubUri = Uri.parse(projectUtils.appStoreLink);
    if (await canLaunchUrl(gitHubUri)) {
      await launchUrl(gitHubUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch GitHub';
    }
  }
   void openAndroidStore() async {
    final Uri gitHubUri = Uri.parse(projectUtils.androidStoreLink);
    if (await canLaunchUrl(gitHubUri)) {
      await launchUrl(gitHubUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch GitHub';
    }
  }
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: () {
      
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  ProjectDetails(projectUtils:projectUtils ,)));
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: 260,
        height: 350,
        decoration: BoxDecoration(
            color: CustomColor.bgLight2,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              projectUtils.coverImg,
              height: 180,
              width: 260,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
              child: Text(
                projectUtils.title,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: CustomColor.whitePrimary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Text(
                projectUtils.subTitle,
                style: const TextStyle(
                    fontSize: 12, color: CustomColor.whiteSecondary),
              ),
            ),
            const Spacer(),
            projectUtils.appStoreLink == "" || projectUtils.androidStoreLink ==""?
             Container(
              color: CustomColor.bLightl,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child:const Row(
                children: [
                   Text(
                    "Read more",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                        fontSize: 12, color: CustomColor.yellowSecondary),
                  ),
                
                
                 
                ],
              ),
            ):
            Container(
              color: CustomColor.bLightl,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                children: [
                  const Text(
                    "Available on :",
                    style: TextStyle(
                        fontSize: 12, color: CustomColor.yellowSecondary),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: openAppStore,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(Icons.apple),
                    ),
                  ),
                  GestureDetector(
                    onTap: openAndroidStore,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(Icons.android),
                    ),
                  ),
                 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
