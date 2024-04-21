import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../widgets/login_widget.dart';
import '../widgets/my_button.dart';
import 'home.dart';
import 'otp_verification_screen.dart';


class LoginScreen extends StatefulWidget {
  const  LoginScreen({Key? key}) : super(key: key);


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final countryPicker = const FlCountryCodePicker();

  CountryCode countryCode = const CountryCode(name: 'Nigeria', code: "NG", dialCode: "+234");


  onSubmit(String? input){
     // Get.to(()=>OtpVerificationScreen(countryCode.dialCode+input!));
    Get.to(()=>HomeScreen());
  }

  @override
  Widget build(BuildContext context) {

    void signUserIn() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) =>  OtpVerificationScreen('08140032846')),
      );
    }

    final descController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title : Text('Phone Verification')),
      body: SingleChildScrollView(
        child: Column(

          children: [

            const SizedBox(height: 50,),


            // logo
            Text(
              'Lets Verify your phone',
              style: TextStyle(
                fontSize: 24.sp,
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Having a valid phone number is crucial to communicating with the driver during a trip',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Pls enter your phone number.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            loginWidget(countryCode, descController, ()async{
              final code = await countryPicker.showPicker(context: context);
              if (code != null)  countryCode = code;
              setState(() {

              });
            },onSubmit,),

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
