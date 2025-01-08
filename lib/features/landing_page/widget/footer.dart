import 'package:feature_first/common/widgets/buttons/hover_text_button.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: crossStart,
            children: [

              Column(
                crossAxisAlignment: crossStart,
                children: [

                  ShaderMask(
                    shaderCallback: (Rect rect){
                      return const LinearGradient(
                        colors: [
                          Color(0xffF85E9F),
                          Color(0xff5D50C6)
                        ],
                        tileMode: TileMode.mirror,
                      ).createShader(rect);
                    },
                    child: Text(
                      "Travlog",
                      style: GoogleFonts.poppins(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  ),


                  gap12,


                  SizedBox(
                    width: 300.w,
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur adipiscing elit aliquam",
                      style: CustomTextStyles.descriptionTextStyles,
                    ),
                  ),


                  gap12,

                  Row(
                    children: [

                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: ColorPalates.pink,
                          size: 18.sp,
                        ),
                      ),

                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: ColorPalates.pink,
                          size: 18.sp,
                        ),
                      ),

                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: ColorPalates.pink,
                          size: 18.sp,
                        ),
                      ),

                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: ColorPalates.pink,
                          size: 18.sp,
                        ),
                      ),


                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.youtube,
                          color: ColorPalates.pink,
                          size: 18.sp,
                        ),
                      ),

                    ],
                  )




                ],
              ),


              Column(
                crossAxisAlignment: crossStart,
                children: [

                  Text(
                    "Product",
                    style: CustomTextStyles.titleTextStyles,
                  ),

                  gap16,

                  HoverTextButton(
                    text: "Features",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Pricing",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Case Studies",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Reviews",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Updates",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),



                ],
              ),


              Column(
                crossAxisAlignment: crossStart,
                children: [

                  Text(
                    "Company",
                    style: CustomTextStyles.titleTextStyles,
                  ),

                  gap16,

                  HoverTextButton(
                    text: "About",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Contact Us",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Career",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Culture",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Blog",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),



                ],
              ),


              Column(
                crossAxisAlignment: crossStart,
                children: [

                  Text(
                    "Support",
                    style: CustomTextStyles.titleTextStyles,
                  ),

                  gap16,

                  HoverTextButton(
                    text: "Getting Started",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Help Center",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Server Status",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Report a Bug",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),

                  gap8,

                  HoverTextButton(
                    text: "Chat Support",
                    enableTextColor: ColorPalates.customGrey,
                    fontWeight: FontWeight.normal,
                  ),



                ],
              ),


              Column(
                mainAxisAlignment: mainStart,
                crossAxisAlignment: crossStart,
                children: [

                  Text(
                    "Contacts us",
                    style: CustomTextStyles.titleTextStyles,
                  ),

                  gap16,

                  Row(
                    children: [

                      Icon(
                        FontAwesomeIcons.envelope,
                        color: ColorPalates.customGrey,
                        size: 12.sp,
                      ),

                      gap4,

                      HoverTextButton(
                        text: "contact@travlog.com",
                        enableTextColor: ColorPalates.customGrey,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),

                  gap8,

                  Row(
                    children: [

                      Icon(
                        FontAwesomeIcons.phone,
                        color: ColorPalates.customGrey,
                        size: 12.sp,
                      ),

                      gap4,

                      HoverTextButton(
                        text: "(xx) xxxx xxxx xx",
                        enableTextColor: ColorPalates.customGrey,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),

                  gap8,

                  Row(
                    children: [

                      Icon(
                        FontAwesomeIcons.locationDot,
                        color: ColorPalates.customGrey,
                        size: 12.sp,
                      ),

                      gap4,

                      HoverTextButton(
                        text: "794 Mcallister StSan Francisco, 94102",
                        enableTextColor: ColorPalates.customGrey,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),


                ],
              ),

            ],
          ),

          gap24,

          const Divider(),

          gap12,

          Row(
            mainAxisAlignment: mainSpaceBetween,
            children: [
              Text(
                "Copyright © 2023",
                style: GoogleFonts.poppins(
                  color: ColorPalates.customGrey,
                ),
              ),

              RichText(
                text: TextSpan(
                    text: "All Rights Reserved | ",
                    style: GoogleFonts.poppins(
                      color: ColorPalates.customGrey,
                    ),
                    children: [
                      TextSpan(
                          text:  "Terms and Conditions ",
                          style: GoogleFonts.poppins(
                            color: ColorPalates.purple,
                            decoration: TextDecoration.underline
                          ),
                          children: [
                            TextSpan(
                              text: "| Privacy Policy",
                              style: GoogleFonts.poppins(
                                color: ColorPalates.purple,
                                decoration: TextDecoration.underline
                              ),
                            )
                          ]
                      )
                    ]
                ),
              ),


              gap12

            ],
          )

        ],
      ),
    );
  }
}
