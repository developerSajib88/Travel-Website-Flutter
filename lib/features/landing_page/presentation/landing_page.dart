import 'package:feature_first/app/app.dart';
import 'package:feature_first/common/widgets/buttons/hover_button.dart';
import 'package:feature_first/common/widgets/buttons/hover_text_button.dart';
import 'package:feature_first/common/widgets/buttons/primary_buttons.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LandingPage extends StatelessWidget {
  static String get path => "/landingPage";
  static String get name => "landingPage";
  LandingPage({super.key});

  ScrollController controller = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: controller,
        child: Container(
          width: 1.sw,
          height: 1.sh,
          padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 200.w),
          child: Column(
            crossAxisAlignment: crossStart,
            children: [

              Row(
                crossAxisAlignment: crossCenter,
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

                  const Spacer(),

                  Row(
                    mainAxisAlignment: mainSpaceBetween,
                    children: [
                      const HoverTextButton(text: "Home"),
                      gap24,
                      const HoverTextButton(text: "About"),
                      gap24,
                      const HoverTextButton(text: "Destinations"),
                      gap24,
                      const HoverTextButton(text: "Packages"),
                      gap24,
                      const HoverTextButton(text: "Blog"),
                      gap24,
                      const HoverTextButton(text: "Contact Us"),
                    ],
                  ),

                  const Spacer(),


                  HoverButton(
                    text: "Log In",
                    backgroundColor: Colors.transparent,
                    hoverColor: ColorPalates.pink.withOpacity(0.4),
                  ),

                  gap12,

                  const HoverButton(
                      text: "Sign Up",
                  ),


                ],
              ),

              Expanded(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: ListView(
                    controller: controller,
                    children: [

                      Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Positioned(
                            top: 20,
                            child: Image.asset(
                              Assets.imagesWorldmap1,
                              width: 1000.w,
                              height: 700.h,
                              color: Colors.blue.withOpacity(0.05),
                            ),
                          ),

                          Flex(
                            mainAxisAlignment: mainSpaceBetween,
                            direction: Axis.horizontal,
                            children: [

                              Column(
                                crossAxisAlignment: crossStart,
                                children: [

                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: radiusCircle,
                                        boxShadow: primaryShadow
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Explore the world!",
                                          style: CustomTextStyles.titleTextStyles.copyWith(
                                              color: ColorPalates.pink
                                          ),
                                        ),

                                        gap6,

                                        Image.asset(
                                          "assets/icons/bag.png",
                                          width: 20.w,
                                          height: 20.w,
                                        )

                                      ],
                                    ),
                                  ),


                                  gap12,


                                  RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Travel ",
                                              style: CustomTextStyles.header,
                                            ),

                                            TextSpan(
                                              text: "top \ndestination\n",
                                              style: CustomTextStyles.header.copyWith(
                                                  color: ColorPalates.pink
                                              ),
                                            ),

                                            TextSpan(
                                              text: "of the world",
                                              style: CustomTextStyles.header,
                                            ),

                                          ]
                                      )
                                  ),

                                  Text(
                                    "Where adventure meets comfort. We create \n"
                                        "unforgettable travel experiences",
                                    style: CustomTextStyles.descriptionTextStyles,
                                  ),

                                  gap24,

                                  Row(
                                    children: [
                                      const HoverButton(
                                        text: "Get Started",
                                      ),

                                      gap12,

                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: radiusCircle,
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1.w,
                                            )
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: (){},
                                            hoverColor: Colors.pink.withOpacity(0.5),
                                            borderRadius: radiusCircle,
                                            child: Padding(
                                              padding: padding10,
                                              child: Row(
                                                children: [

                                                  Image.asset(
                                                    Assets.iconsPlay,
                                                    width: 20.w,
                                                    height: 20.w,
                                                  ),

                                                  gap6,

                                                  Text(
                                                    "Watch Demo",
                                                    style: CustomTextStyles.primaryTextStyles.copyWith(
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  )

                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )

                                    ],
                                  ),



                                ],
                              ),

                              Stack(
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
                                    Assets.imagesPreviewImg,
                                    width: 550.w,
                                    height: 550.w,
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
                                            "Top Places",
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
                                            "Top Hotels",
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
                              )

                            ],
                          ),
                        ],
                      ),



                      gap48,
                      gap48,
                      gap48


                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
