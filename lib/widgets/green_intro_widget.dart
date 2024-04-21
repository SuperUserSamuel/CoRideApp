import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

Widget greenIntroWidget({required BuildContext context}){
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/mask.png'),
        fit: BoxFit.cover
      )
    ),
    height: MediaQuery.of(context).size.height*0.5,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

          SvgPicture.asset('assets/leaf icon.svg'),

          const SizedBox(
            height: 20,
          ),
        
        SvgPicture.asset('assets/greenTaxi.svg')
        
      ],
    ),
  );
}

Widget greenIntroWidgetWithoutLogos({String title = "Profile Settings",String? subtitle, required BuildContext context}){
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/mask.png'),
            fit: BoxFit.fill
        )
    ),
    height: MediaQuery.of(context).size.height*0.3,
    child: Container(
        height: MediaQuery.of(context).size.height*0.1,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
            if(subtitle != null) Text(subtitle,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),

          ],
        )),

  );
}