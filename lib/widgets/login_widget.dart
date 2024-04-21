import 'package:corideapp/widgets/text_widget.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';
import 'my_textfield.dart';


Widget loginWidget(CountryCode countryCode,
   controller, Function onCountryChange,Function onSubmit) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const SizedBox(
          height: 25,
        ),

        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 3,
                    blurRadius: 3)
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () => onCountryChange(),
                    child:
                    Row(
                      children: [
                        SizedBox(width: 8,),
                        Text('+234'),
                        SizedBox(width: 8,),
                      ],
                    )

                  )),
              Container(
                width: 1,
                height: 55,
                color: Colors.black.withOpacity(0.2),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child:   MyTextField3(
                    controller: controller,
                    hintText:
                    'EG: 08140032846',
                    obscureText: false,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                children: [
                  const TextSpan(
                    text: "${AppConstants.byCreating} ",
                  ),
                  TextSpan(
                      text: "${AppConstants.termsOfService} ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  const TextSpan(
                    text: "and ",
                  ),
                  TextSpan(
                      text: "${AppConstants.privacyPolicy} ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                ]),
          ),
        )
      ],
    ),
  );
}
