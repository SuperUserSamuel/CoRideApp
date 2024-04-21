
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/my_button.dart';


class BiometricVerification extends StatelessWidget {
  const BiometricVerification({super.key});

  get signUserIn => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identity'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.perm_contact_cal_rounded,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Biometric Verification Process:',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),


              const SizedBox(height: 10),

              // forgot password?
             ListTile(
               leading: Icon(Icons.account_box, size: 40.r,),
               title: Text('Your Drivers License'),
               subtitle: Text('You would take a photo of the front and back of your drivers license',
                 style: TextStyle(
                   color: Colors.grey[700],
                   fontSize: 16,
                 ),),
             ),

              ListTile(
                leading: Icon(Icons.camera_alt, size: 40.r,),
                title: Text('A selfie'),
                subtitle: Text('We would verify the picture on your drivers license matches your face',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),),
              ),

              ListTile(
                leading: Icon(Icons.timelapse, size: 40.r,),
                title: Text('Wait For Verification'),
                subtitle: Text('The verification process only takes 24 hrs',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton1(
                onTap: signUserIn, buttonText: 'Continue',
              ),

              const SizedBox(height: 50),

            ],
          ),
        ],
      ),
    );
  }
}
