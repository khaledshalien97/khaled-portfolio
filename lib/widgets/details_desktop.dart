import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/utils/project_utils.dart';


class DetailsDesktop extends StatefulWidget {
  const DetailsDesktop(
      {super.key, required this.projectUtils, required this.onPressedGithub});

  final ProjectUtils projectUtils;
  final Function()? onPressedGithub;

  @override
  State<DetailsDesktop> createState() => _DetailsDesktopState();
}

class _DetailsDesktopState extends State<DetailsDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.projectUtils.title,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                  height: 1.5),
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
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.projectUtils.subTitle,
          style: const TextStyle(
              fontSize: 20,
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
      ],
    );
  }
}
