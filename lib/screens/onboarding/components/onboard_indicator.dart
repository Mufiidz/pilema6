import 'package:flutter/material.dart';

class OnboardIndicator extends StatelessWidget {
  const OnboardIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 45,
        height: 4,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : const Color(0xFF565656),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
