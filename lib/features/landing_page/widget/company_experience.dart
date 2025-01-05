import 'package:feature_first/common/widgets/animated_counter.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CompanyExperience extends StatelessWidget {
  const CompanyExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Row(
        mainAxisAlignment: mainSpaceBetween,
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment: crossStart,
              mainAxisAlignment: mainCenter,
              children: [

                gap24,

                Text(
                  "Our Experience",
                  style: CustomTextStyles.primaryTextStyles.copyWith(
                      color: Colors.pink,
                      fontSize: 12.sp
                  ),
                ),

                gap12,

                SizedBox(
                  width: 250.w,
                  child: Text(
                    "Crafting Unforgettable Adventures",
                    style: CustomTextStyles.header.copyWith(
                      fontSize: 30.sp,
                    ),
                  ),
                ),

                gap24,

                const Text(
                  "We excel in curating remarkable journeys, specializing in outdoor "
                      "destinations around the globe. With a wealth of experience,"
                      " we bring adventures to life and invite you to embark on your own. "
                      "The call of nature awaits—begin your adventure today!",
                ),

                gap24,

                Row(
                  mainAxisAlignment: mainSpaceBetween,
                  children: [

                    Column(
                      children: [

                        AnimatedCounter(
                          value: 1000,
                          concreateText: "+",
                          fonSize: 25.sp,
                        ),

                        const Text(
                          "Outdoor Destinations"
                        )

                      ],
                    ),

                    Column(
                      children: [

                        AnimatedCounter(
                          value: 98,
                          concreateText: "%",
                          fonSize: 25.sp,
                        ),

                        const Text(
                            "Customer Satisfaction"
                        )

                      ],
                    ),

                    Column(
                      children: [

                        AnimatedCounter(
                          value: 15,
                          concreateText: "+",
                          fonSize: 25.sp,
                        ),

                        const Text(
                            "Years Of Experience"
                        )

                      ],
                    ),

                  ],
                )

              ],
            ),
          ),

          gap24,

          Expanded(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [


                Positioned(
                  left: -40,
                  bottom: 30,
                  child: Container(
                    width: 500.w,
                    height: 400.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.withOpacity(0.4),
                              blurRadius: 100
                          )
                        ]
                    ),
                  ),
                ),


                Image.asset(
                  Assets.imagesPreviewImg3,
                  width: 550.w,
                  height: 400.w,
                  fit: BoxFit.fitWidth,
                ),


                Positioned(
                  left: 50,
                  bottom: 110,
                  child: Container(
                    padding: padding10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: radiusCircle,
                        boxShadow: primaryShadow
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          Assets.iconsLocation,
                          width: 20.w,
                          height: 20.w,
                        ),

                        gap4,

                        Text(
                          "Best Fun",
                          style: CustomTextStyles.secondaryTextStyles,
                        ),
                      ],
                    ),
                  ),
                ).animate(
                  onPlay: (controller) => controller.repeat(reverse: true), // Loop animation
                ).move(
                  duration: 1.seconds,
                  begin: const Offset(0, -10),
                  end: const Offset(0, 10),
                  curve: Curves.easeInOut,
                ),

                Positioned(
                  right: 40,
                  bottom: 70,
                  child: Container(
                    padding: padding10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: radiusCircle,
                        boxShadow: primaryShadow
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          Assets.iconsLocation,
                          width: 20.w,
                          height: 20.w,
                        ),

                        gap4,

                        Text(
                          "Best Adventures",
                          style: CustomTextStyles.secondaryTextStyles,
                        ),
                      ],
                    ),
                  ),
                ).animate(
                  onPlay: (controller) => controller.repeat(reverse: true), // Loop animation
                ).move(
                  duration: 1.seconds,
                  end: const Offset(0, -10),
                  begin: const Offset(0, 10),
                  curve: Curves.easeInOut,
                ),


                Positioned(
                  right: 30,
                  child: Container(
                    padding: padding10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: radius12,
                        boxShadow: primaryShadow
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Container(
                              width: 25.w,
                              height: 25.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: radius4,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 1,
                                        spreadRadius: 0.1
                                    )
                                  ]
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.iconsNetwork,
                                  width: 18.w,
                                  height: 18.w,
                                ),
                              ),
                            ),

                            gap6,

                            Text(
                              "5000+",
                              style: CustomTextStyles.primaryTextStyles.copyWith(
                                  color: Colors.purple
                              ),
                            ),
                          ],
                        ),

                        gap4,

                        Text(
                          "Customers",
                          style: CustomTextStyles.secondaryTextStyles,
                        ),

                      ],
                    ),
                  ),
                ).animate(
                  onPlay: (controller) => controller.repeat(reverse: true), // Loop animation
                ).moveX(
                  duration: 1.seconds,
                  begin: -10, // Move 100 pixels to the left
                  end: 10,
                  curve: Curves.easeInOut,
                ),


              ],
            ),
          )

        ],
      ),
    );
  }
}
