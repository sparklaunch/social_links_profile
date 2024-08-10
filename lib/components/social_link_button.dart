import 'package:flutter/material.dart';

class SocialLinkButton extends StatelessWidget {
  final String title;
  const SocialLinkButton(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(45, 45, 45, 1.0),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(15),
            shadowColor: Colors.black,
            elevation: 10,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(title),
        ),
      ),
    );
  }
}
