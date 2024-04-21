

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:introduction_screen/introduction_screen.dart';
import '../authentication/login.dart';
import '../home.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }


  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 9000,
      infiniteAutoScroll: true,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 32, right: 16),
            child: Column(
              children: [

                SizedBox(height: 24,)
              ],
            ),
          ),
        ),
      ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          title: "CORIDE RIDE SHARING APP",
          body:
          "Sharing Travel at less cost has never been this easy, safe and slick",
          image: _buildImage('img1.jpg'),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "CorideApp is not Uber Or Bolt",
          body:
          "Coride app is a carpool community, not a taxi service or Uber Or Bolt",
          image: _buildImage('img1.jpg'),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Only Use Our Online Booking System",
          body:
          "Cash or e-transfers are not allowed, Use our online booking system.",
          image: _buildImage('img2.jpg'),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Show Up Early",
          body:
          "Please show up 10 minutes before departure.",
          image: _buildImage('img3.jpg'),
          decoration: pageDecoration,
        ),


      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip:  Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,
      fontSize: 18.sp)),
      next: const Icon(Icons.arrow_forward),
      done:  Text('Done', style: TextStyle(fontWeight: FontWeight.w600,
          fontSize: 18.sp)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator:  DotsDecorator(
        activeColor: Colors.green.shade100,
        size: Size(10.0, 10.0),
        color: Color(0xff2DBB54),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),

    );
  }
}
