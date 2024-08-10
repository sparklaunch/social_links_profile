import 'package:flutter/material.dart';
import 'package:social_links_profile/components/social_link_button.dart';

class MainScreen extends StatelessWidget {
  static const List<String> socialLinks = [
    "GitHub",
    "Frontend Mentor",
    "LinkedIn",
    "Twitter",
    "Instagram"
  ];
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(29, 29, 29, 1.0),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                spreadRadius: 3,
                blurRadius: 3,
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(0, 3))
          ],
        ),
        margin: const EdgeInsets.all(30),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/Avatar.jpeg",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Jessica Randall",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "London, United Kingdom",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(212, 244, 103, 1.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "\"Front-end developer and avid reader.\"",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              ...socialLinks.map((socialLink) {
                return SocialLinkButton(socialLink);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
