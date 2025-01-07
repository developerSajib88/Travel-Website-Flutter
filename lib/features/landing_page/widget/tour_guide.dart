import 'dart:ui';

import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TourGuide extends StatelessWidget {
  const TourGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossStart,
      mainAxisAlignment: mainSpaceBetween,
      children: [

        Expanded(
            child: Column(
              crossAxisAlignment: crossStart,
              children: [

                SizedBox(
                  width: 400.w,
                  child: Text(
                    "Meet Our Expert Tour Guides",
                    style: CustomTextStyles.header.copyWith(
                      fontSize: 32.sp
                    ),
                  ),
                ),

                gap12,

                SizedBox(
                  width: 400.w,
                  child: const Text(
                    "Our journeys are enriched by our team of seasoned tour guides. "
                        "Our guides bring your adventures to life with their expertise"
                        ", passion",
                  ),
                ),


                gap24,

                Stack(
                  clipBehavior: Clip.none,
                  children: [

                    Positioned(
                      top: -30,
                      right: -30,
                      child: Container(
                          width: 60.w,
                          height: 60.w,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.98, 0.19),
                              end: Alignment(0.98, -0.19),
                              colors: [Color(0xFF5D50C6), Color(0xFFF85E9F)],
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10, tileMode: TileMode.mirror),
                              child: SizedBox(
                                width: 100.w,
                                height: 100.w,
                              ),
                            ),
                          )),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 10)
                            )
                          ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.r),
                        child: Image.network(
                          Assets.destinationDestination3,
                          width: 450.w,
                          height: 300.h,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 40,
                      right: -50,
                      child: Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5, tileMode: TileMode.mirror),
                              child: SizedBox(
                                width: 100.w,
                                height: 100.w,
                              ),
                            ),
                          )),
                    ),

                    Positioned(
                      bottom: 50,
                      left: -20,
                      child: Container(
                          width: 80.w,
                          height: 80.w,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.98, 0.19),
                              end: Alignment(0.98, -0.19),
                              colors: [Color(0xFF5D50C6), Color(0xFFF85E9F)],
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10, tileMode: TileMode.mirror),
                              child: SizedBox(
                                width: 100.w,
                                height: 100.w,
                              ),
                            ),
                          )),
                    ),

                    Positioned(
                        left: 20,
                        top: 10,
                        child: Container(
                          height: 35.h,
                          padding: paddingH6,
                          decoration: BoxDecoration(
                            color: const Color(0xff0C111F).withOpacity(0.5),
                            borderRadius: radiusCircle,
                          ),
                          child: Row(
                            mainAxisAlignment: mainSpaceEven,
                            children: [

                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 15.sp,
                              ),

                              gap4,

                              const Text(
                                "Gramado, Brazil",
                                style: TextStyle(
                                    color: Colors.white,
                                  fontWeight: FontWeight.normal
                                ),
                              )

                            ],
                          ),
                        )
                    )

                  ],
                ),

              ],
            )
        ),

        gap40,

        Expanded(
          child: Column(
            crossAxisAlignment: crossCenter,
            mainAxisAlignment: mainCenter,
            children: [

              gap48,

              Row(
                mainAxisAlignment: mainEnd,
                crossAxisAlignment: crossStart,
                children: [
                  Container(
                    width: 70.w,
                    height: 70.w,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(12, 17, 12, 12),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8481FF).withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(98.62),
                      ),
                    ),
                    child: Image.asset(
                      Assets.iconsThumbIc,
                      width: 60.w,
                      height: 60.w,
                    ),
                  ),


                  gap24,

                  Column(
                    crossAxisAlignment: crossStart,
                    children: [

                      Text(
                        "Expertise",
                        style: CustomTextStyles.primaryTextStyles,
                      ),

                      gap6,

                      SizedBox(
                        width: 400.w,
                        child: const Text(
                          "Our guides are experts in their fields, "
                              "ensuring in-depth knowledge and insights into every destination.",
                        ),
                      )

                    ],
                  )

                ],
              ),

              gap24,

              const Divider(),

              gap24,

              Row(
                mainAxisAlignment: mainEnd,
                crossAxisAlignment: crossStart,
                children: [
                  Container(
                    width: 70.w,
                    height: 70.w,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(12, 25, 12, 12),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8481FF).withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(98.62),
                      ),
                    ),
                    child: Image.asset(
                      Assets.iconsHeartIc,
                      width: 60.w,
                      height: 60.w,
                    ),
                  ),


                  gap24,

                  Column(
                    crossAxisAlignment: crossStart,
                    children: [

                      Text(
                        "Passion",
                        style: CustomTextStyles.primaryTextStyles,
                      ),

                      gap6,

                      SizedBox(
                        width: 400.w,
                        child: const Text(
                          "They are passionate about travel, "
                              "culture, and history, making your journey engaging and captivating.",
                        ),
                      )

                    ],
                  )

                ],
              ),

              gap24,

              const Divider(),

              gap24,

              Row(
                mainAxisAlignment: mainEnd,
                crossAxisAlignment: crossStart,
                children: [
                  Container(
                    width: 70.w,
                    height: 70.w,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(12, 17, 12, 12),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8481FF).withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(98.62),
                      ),
                    ),
                    child: Image.asset(
                      Assets.iconsDedicationIc,
                      width: 60.w,
                      height: 60.w,
                    ),
                  ),


                  gap24,

                  Column(
                    crossAxisAlignment: crossStart,
                    children: [

                      Text(
                        "Dedication",
                        style: CustomTextStyles.primaryTextStyles,
                      ),

                      gap6,

                      SizedBox(
                        width: 400.w,
                        child: const Text(
                          "Our guides are dedicated to providing exceptional service and "
                              "ensuring your travel memories are truly unforgettable.",
                        ),
                      )

                    ],
                  )

                ],
              ),



            ],
          ),
        )
      ],
    );
  }
}
