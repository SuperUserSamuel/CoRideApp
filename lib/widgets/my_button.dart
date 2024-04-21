import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';



Widget DecisionButton(String icon,String text,Function onPressed,double width){
  return InkWell(
    onTap: ()=> onPressed(),
    child: Container(
      width: width,
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
            child: Center(child: Image.asset(icon,width: 30,),),
          ),

          Expanded(child: Text(text,textAlign: TextAlign.center,)),

        ],
      ),
    ),
  );
}






class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.h),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0xff2DBB54),
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}


class MyButton1 extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  const MyButton1({super.key, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.all(20.h),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0xff2DBB54),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
           buttonText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}


class MyButton2 extends StatelessWidget {
  final Function()? onTap;

  const MyButton2({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xff2DBB54),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Next",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
