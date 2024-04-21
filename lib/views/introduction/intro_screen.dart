import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../controller/auth_controller.dart';
import '../../widgets/green_intro_widget.dart';



class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

            greenIntroWidget(context: context),

            Spacer(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('CORIDE RIDE SHARING APP',
              style: Theme.of(context).textTheme.displaySmall,
              textAlign: TextAlign.center,),
            ),

            SizedBox(height: 6.h,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Opacity(
                opacity: 0.64,
                child: Text('Sharing Travel at less cost has never been this easy, safe and slick',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,),
              ),
            ),

            Spacer(),

            ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                height: 50.h,
                width: 200.w
              ),
              child: PlatformElevatedButton(
                child: Text('Get Started'),
              ),
            ),

            Spacer(),


          ],
        ),
      ),
    );
  }
}
