import 'package:flutter/material.dart';
import 'package:khaled_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {


  void openWhatsApp() async {
  const String phoneNumber = "+962790058797"; 
  const String message = "Hello, I found your portfolio and want to connect!";
  final Uri whatsappUri = Uri.parse("https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}");

  if (await canLaunchUrl(whatsappUri)) {
    await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch WhatsApp';
  }
}
 // LinkedIn Profile
  void openLinkedIn() async {
    final Uri linkedInUri = Uri.parse("https://www.linkedin.com/in/khaled-shalien/");
    if (await canLaunchUrl(linkedInUri)) {
      await launchUrl(linkedInUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch LinkedIn';
    }
  }

  // GitHub Profile
  void openGitHub() async {
    final Uri gitHubUri = Uri.parse("https://github.com/khaledshalien97");
    if (await canLaunchUrl(gitHubUri)) {
      await launchUrl(gitHubUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch GitHub';
    }
  }

  // Email Contact
  void sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'khaledshalien2@gmail.com',
      query: Uri.encodeQueryComponent('subject=Portfolio Inquiry&body=Hi, I found your portfolio and would like to connect.'),
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not send email';
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
     // height: 200,
      width: double.maxFinite,
      color: CustomColor.bLightl,
      child: Column(
        children: [
         
         const Text("Contact",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: CustomColor.whitePrimary),),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider()),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12,
            runSpacing: 12,
            children: [
              InkWell(
                  onTap: openGitHub,
                  child: Image.asset(
                    "asset/images/github_logo.png",
                    width: 30,
                  )),
             
              InkWell(
                  onTap: openLinkedIn,
                  child: Image.asset(
                    "asset/images/linkedin_logo.webp",
                    width: 28,
                  )),
              InkWell(
                  onTap: sendEmail,
                  child: Image.asset(
                    "asset/images/email_logo.png",
                    width: 30,
                  )),
                   InkWell(
                  onTap: openWhatsApp,
                  child: Image.asset(
                    "asset/images/whatsapp_logo.jpg",
                    width: 30,
                  )),
             
            ],
          )
        ],
      ),
    );
  }
}
