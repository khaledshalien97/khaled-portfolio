import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/utils/project_utils.dart';


class DetailsMobile extends StatefulWidget {
  const DetailsMobile(
      {super.key, required this.projectUtils, this.onPressedGithub});
  final ProjectUtils projectUtils;
  final Function()? onPressedGithub;

  @override
  State<DetailsMobile> createState() => _DetailsMobileState();
}

class _DetailsMobileState extends State<DetailsMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            backgroundColor: CustomColor.yellowPrimary,
            child: Center(
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)))),
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.projectUtils.title,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
              height: 1.5),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.projectUtils.subTitle,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: CustomColor.whiteSecondary,
              height: 1.5),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          widget.projectUtils.description,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w200,
            color: CustomColor.whiteSecondary,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        widget.projectUtils.githubLink == ""
            ? const SizedBox()
            : SizedBox(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.yellowPrimary,
                    ),
                    onPressed: widget.onPressedGithub,
                    child: const Text("GitHub Link",
                        style: TextStyle(color: CustomColor.whitePrimary))),
              ),
      ],
    );
  }
}
