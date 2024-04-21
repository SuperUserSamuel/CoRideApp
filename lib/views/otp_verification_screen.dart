import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../controller/auth_controller.dart';
import '../utils/app_colors.dart';
import '../widgets/green_intro_widget.dart';
import '../widgets/my_button.dart';
import '../widgets/otp_verification_widget.dart';
import 'decision_screen/decission_screen.dart';


class OtpVerificationScreen extends StatefulWidget {

  String phoneNumber;
  OtpVerificationScreen(this.phoneNumber);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {


  AuthController authController = Get.find<AuthController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authController.phoneAuth(widget.phoneNumber);
  }

  void signUserIn() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => DecisionScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('Phone Verification')),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 50,),


            // Stack(
            //   children: [
            //
            //     Positioned(
            //       top: 60,
            //       left: 30,
            //       child: InkWell(
            //         onTap: (){
            //           Get.back();
            //         },
            //         child: Container(
            //           width: 45,
            //           height: 45,
            //           decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: Colors.white,
            //           ),
            //           child: Icon(Icons.arrow_back,color: AppColors.greenColor,size: 20,),
            //         ),
            //       ),
            //     ),
            //
            //
            //   ],
            // ),

            otpVerificationWidget(context: context),

            const SizedBox(height: 24),

            MyButton2(
              onTap: signUserIn,
            ),



          ],
        ),
      ),
    );
  }
}
