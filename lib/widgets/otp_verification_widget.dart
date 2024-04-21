import 'package:corideapp/widgets/pinput_widget.dart';
import 'package:corideapp/widgets/text_widget.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';


Widget otpVerificationWidget({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(text: AppConstants.phoneVerification),
        textWidget(
            text: AppConstants.enterOtp,
            fontSize: 22,
            fontWeight: FontWeight.bold),
        const SizedBox(
          height: 40,
        ),


       SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: const RoundedWithShadow()),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                children: [
                  const TextSpan(
                    text: "${AppConstants.resendCode} ",
                  ),
                  TextSpan(
                      text: "10 seconds",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),

                ]),
          ),
        )
      ],
    ),
  );
}
