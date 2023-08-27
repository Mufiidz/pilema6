import 'package:flutter/material.dart';

import '../../data/onboard_data.dart';
import '../../res/export_res.dart';

import 'components/onboard_content.dart';
import 'components/onboard_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(PilemImage.bgOnboard),
          colorFilter: ColorFilter.mode(
            PilemColor.bgColor.withOpacity(0.07),
            BlendMode.dstATop,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onboardData.length,
                      (index) => OnboardIndicator(
                        isActive: index == _pageIndex,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) => OnboardContent(
                      title: onboardData[index].title,
                      image: onboardData[index].image,
                    ),
                    itemCount: onboardData.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: SizedBox(
                    height: 70.0,
                    width: 280,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PilemColor.buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: Text(
                        'GET STARTED',
                        style: PilemTextStyle.medium.firaSansBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
