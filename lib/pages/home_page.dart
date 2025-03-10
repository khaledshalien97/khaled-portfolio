import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:khaled_portfolio/constants/size_screens.dart';
import 'package:khaled_portfolio/widgets/contact_section.dart';
import 'package:khaled_portfolio/widgets/drawer_mobile.dart';
import 'package:khaled_portfolio/widgets/footer.dart';
import 'package:khaled_portfolio/widgets/header_desktop.dart';
import 'package:khaled_portfolio/widgets/header_mobile.dart';
import 'package:khaled_portfolio/widgets/main_desktop.dart';
import 'package:khaled_portfolio/widgets/main_mobile.dart';
import 'package:khaled_portfolio/widgets/project_section.dart';
import 'package:khaled_portfolio/widgets/skills_desktop.dart';
import 'package:khaled_portfolio/widgets/skills_mobile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKey = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DraweMobile(
                onNavItemTap: (int navIndex) {
                   scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
           
           
              SizedBox(
                key: navBarKey.first,
              ),
              //  MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(
                  onMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                  },
                )
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              if (constraints.maxWidth >= kMinDesktopWidth)
                 MainDesktop(
                  onPressedContact:(int navIndex) {
                      scrollToSection(3);
                  },)
              else
                 MainMobile(
                    onPressedContact:(int navIndex) {
                      scrollToSection(3);
                  },
                ),
                
              //  Skills
              Container(
                key: navBarKey[1],
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: screenWidth,
                color: CustomColor.bLightl,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "What I Can Do",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),

              //PROJECTS
              ProjectSection(
                key: navBarKey[2],
              ),
              //CONTACT
              ContactSection(
                key: navBarKey[3],
              ),
              const SizedBox(
                height: 30,
              ),
              //FOOTER
              const Fotter()
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    final key = navBarKey[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
