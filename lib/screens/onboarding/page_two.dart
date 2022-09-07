import 'package:flutter/material.dart';
import 'package:videoapp/screens/onboarding/reusablewidgets.dart';
import 'package:videoapp/screens/onboarding/strings.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key, this.ontap}) : super(key: key);

  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children:  [
          const Text(
            Strings.title,
            style: Strings.titleStyle,
          ),
          const SizedBox(height: 100),
          Image.asset('images/selfie2.png', height: 300,),
          const Text(
            Strings.welcomeText,
            style: Strings.welcomeStyle,
          ),
          const SizedBox(height: 5),
          const Text(
            Strings.introText,
            textAlign: TextAlign.center,
            style: Strings.introStyle,
          ),
          const Spacer(),
          GestureDetector(onTap: ontap,child: const OnboardingButton(text: 'Next'))
        ],
      ),
    );
  }
}
