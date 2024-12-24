import 'dart:math';
import 'dart:ui';

import 'package:feature_first/app/app.dart';
import 'package:feature_first/common/widgets/animated_counter.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hive/hive.dart';

class ServicesHistory extends StatelessWidget {
  const ServicesHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossCenter,
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [

              Positioned(
                bottom: 20,
                left: 20,
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
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: SizedBox(
                          width: 100.w,
                          height: 100.w,
                        ),
                      ),
                    )),
              ).animate(
                onPlay: (controller) => controller.repeat(), // Loop animation
              ).custom(
                duration: 4.seconds, // Total animation time for one circle
                builder: (context, value, child) {
                  double angle = value * 2 * pi;
                  double x = 20 * cos(angle);
                  double y = 20 * sin(angle);
                  return Transform.translate(
                    offset: Offset(y, x),
                    child: child,
                  );
                },
              ),

              Image.asset(
                "assets/images/preview_img_2.png",
                width: 470.w,
                height: 470.w,
              ),

              Positioned(
                top: 150,
                right: 170,
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
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: SizedBox(
                        width: 100.w,
                        height: 100.w,
                      ),
                      ),
                    )),
              ) .animate(
                onPlay: (controller) => controller.repeat(), // Loop animation
              ).custom(
                duration: 4.seconds, // Total animation time for one circle
                builder: (context, value, child) {
                  double angle = value * 2 * pi;
                  double x = 20 * cos(angle);
                  double y = 20 * sin(angle);
                  return Transform.translate(
                    offset: Offset(x, y),
                    child: child,
                  );
                },
              ),


              Positioned(
                bottom: 200,
                right: 100,
                child: Container(
                    width: 15.w,
                    height: 15.w,
                    decoration: const BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: SizedBox(
                          width: 15.w,
                          height: 15.w,
                        ),
                      ),
                    )),
              ).animate(
                onPlay: (controller) => controller.repeat(), // Loop animation
              ).custom(
                duration: 4.seconds, // Total animation time for one circle
                builder: (context, value, child) {
                  double angle = value * 2 * pi;
                  double x = 20 * cos(angle);
                  double y = 20 * sin(angle);
                  return Transform.translate(
                    offset: Offset(y, x),
                    child: child,
                  );
                },
              ),



              Positioned(
                bottom: 150,
                right: 150,
                child: Container(
                    width: 35.w,
                    height: 35.w,
                    decoration: const BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: SizedBox(
                          width: 35.w,
                          height: 35.w,
                        ),
                      ),
                    )),
              ).animate(
                onPlay: (controller) => controller.repeat(), // Loop animation
              ).custom(
                duration: 4.seconds, // Total animation time for one circle
                builder: (context, value, child) {
                  double angle = value * 2 * pi;
                  double x = 20 * cos(angle);
                  double y = 20 * sin(angle);
                  return Transform.translate(
                    offset: Offset(x, y),
                    child: child,
                  );
                },
              ),



              Positioned(
                bottom: 50,
                right: 150,
                child: Container(
                    width: 35.w,
                    height: 35.w,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: SizedBox(
                          width: 100.w,
                          height: 100.w,
                        ),
                      ),
                    )),
              ).animate(
                onPlay: (controller) => controller.repeat(), // Loop animation
              ).custom(
                duration: 4.seconds, // Total animation time for one circle
                builder: (context, value, child) {
                  double angle = value * 2 * pi;
                  double x = 20 * cos(angle);
                  double y = 20 * sin(angle);
                  return Transform.translate(
                    offset: Offset(x, y),
                    child: child,
                  );
                },
              ),


            ],
          ),
        ),



        Column(
          crossAxisAlignment: crossStart,
          children: [

            Text(
              "choose your next destination".toUpperCase(),
              style: CustomTextStyles.primaryTextStyles.copyWith(
                  color: Colors.pink,
                  fontSize: 12.sp
              ),
            ),

            gap12,

            Text(
              "Unlock Your Dream Destination",
              style: CustomTextStyles.titleTextStyles.copyWith(
                  fontSize: 20.sp
              ),
            ),

            gap24,

            SizedBox(
              width: 300.w,
              child: Text(
                "We are dedicated to making your journey of discovery truly unforgettable. Our team of passionate travel experts is here to assist you in finding the destination of your dreams.",
                style: CustomTextStyles.descriptionTextStyles,
              ),
            ),

            gap24,

            Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: [

                Container(
                  width: 160.w,
                  height: 140.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.97, color: Color(0x19191825)),
                      borderRadius: radius24,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: crossCenter,
                    mainAxisAlignment: mainCenter,
                    children: [

                      const AnimatedCounter(
                        value: 4000,
                        concreateText: "+",
                      ),

                      Text(
                        "Satisfied Customers",
                        style: CustomTextStyles.descriptionTextStyles.copyWith(
                            color: Colors.black
                        ),
                      )

                    ],
                  ),
                ),

                gap24,

                Container(
                  width: 160.w,
                  height: 140.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.97, color: Color(0x19191825)),
                      borderRadius: radius24,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: crossCenter,
                    mainAxisAlignment: mainCenter,
                    children: [

                      const AnimatedCounter(
                        value: 1000,
                        concreateText: "+",
                      ),

                      Text(
                        "Global Destinations",
                        style: CustomTextStyles.descriptionTextStyles.copyWith(
                            color: Colors.black
                        ),
                      )

                    ],
                  ),
                )


              ],
            ),

            gap24,

            Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: [

                Container(
                  width: 160.w,
                  height: 140.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.97, color: Color(0x19191825)),
                      borderRadius: radius24,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: crossCenter,
                    mainAxisAlignment: mainCenter,
                    children: [
                      Text(
                        "24/7",
                        style: CustomTextStyles.primaryTextStyles.copyWith(
                            color: Colors.pink,
                            fontSize: 18.sp
                        ),
                      ),

                      Text(
                        "Customer Support",
                        style: CustomTextStyles.descriptionTextStyles.copyWith(
                            color: Colors.black
                        ),
                      )

                    ],
                  ),
                ),

                gap24,

                Container(
                  width: 160.w,
                  height: 140.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.97, color: Color(0x19191825)),
                      borderRadius: radius24,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: crossCenter,
                    mainAxisAlignment: mainCenter,
                    children: [
                      const AnimatedCounter(
                        value: 100,
                        concreateText: "%",
                      ),

                      Text(
                        "Dedication",
                        style: CustomTextStyles.descriptionTextStyles.copyWith(
                            color: Colors.black
                        ),
                      )

                    ],
                  ),
                )


              ],
            ),


          ],
        )


      ],
    );
  }
}
