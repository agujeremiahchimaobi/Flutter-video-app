import 'package:flutter/material.dart';
import 'package:videoapp/screens/onboarding/page_one.dart';
import 'package:videoapp/screens/onboarding/page_three.dart';
import 'package:videoapp/screens/onboarding/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: PageView(
              physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [
                  PageOne(
                    ontap: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease);
                    },
                  ),
                  PageTwo(
                    ontap: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease);
                    },
                  ),
                  PageThree(
                    ontap: () {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.teal,
                  dotColor: Colors.tealAccent,
                  dotHeight: 10,
                  dotWidth: 10),
            )
          ],
        ),
      ),
    );
  }
}
