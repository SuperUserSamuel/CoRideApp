import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/auth_controller.dart';
import '../../main/main_screen.dart';
import '../../utils/app_colors.dart';
import '../../widgets/my_button.dart';

import '../home.dart';
import '../login_screen.dart';


class DecisionScreen extends StatelessWidget {
  DecisionScreen({super.key});

  AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),

          // logo
          Text(
            'How will you often use the Coride App',
            style: TextStyle(
              fontSize: 24.sp,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Let us know How will you often use the Coride App, This would help us send you relevatnt communications',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(
            height: 24,
          ),

          DecisionButton('assets/customer.png', 'Mostly As Driver', () {
            authController.isLoginAsDriver = true;
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => MainScreen()),
            );
          }, MediaQuery.of(context).size.width * 0.8),

          const SizedBox(
            height: 24,
          ),

        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => MainScreen()),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height:  44.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 3,
                      spreadRadius: 2

                  )
                ]
            ),
            child: Row(
              children: [
                Container(
                  width: 65,
                  height:  44.h,
                  decoration: const BoxDecoration(
                    color: AppColors.greenColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),

                  ),
                  child: Center(child: Image.asset('assets/customer.png',width: 30,),),
                ),

                Expanded(child: Text('Mostly As User',textAlign: TextAlign.center,)),

              ],
            ),
          ),
        )

        ],
      ),
    );
  }
}
