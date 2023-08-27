import 'package:flutter/material.dart';

import 'package:pilema6/res/export_res.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.title,
    required this.image,
  });

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: PilemTextStyle.title.lato,
        ),
        const SizedBox(height: 40),
        Image.asset(
          image,
          width: 300.0,
          height: 350.0,
        ),
      ],
    );
  }
}
