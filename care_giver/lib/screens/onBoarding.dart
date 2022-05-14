import 'package:care_giver/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({ Key? key }) : super(key: key);

  @override
  _onBoardingState createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  final controller = PageController(viewportFraction: 0.8 , keepPage: true);

  @override
  Widget build(BuildContext context) {
    List <onBoardingWidget> pages = [
       onBoardingWidget(body: 'body', picture: 'assets/images/onboarding1.png', controller: controller,),
       onBoardingWidget(body: 'body', picture: 'assets/images/onboarding2.png', controller: controller,),
       onBoardingWidget(body: 'body', picture: 'assets/images/onboarding3.png', controller: controller,),
    ]; 
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              SizedBox(
                height: 500,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: const ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

