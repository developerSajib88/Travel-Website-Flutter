import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationItemView extends StatelessWidget {

  final String image;
  final String title;
  final String location;
  final String description;
  final String price;
  final EdgeInsetsDirectional? padding;

  const DestinationItemView({super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.description,
    required this.price,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      padding: padding ?? paddingRight24,
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          Stack(
            children: [

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
                    image,
                    width: 1.sw,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                  right: 20,
                  top: 10,
                  child: Container(
                    width: 50.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff0C111F).withOpacity(0.5),
                      borderRadius: radiusCircle,
                    ),
                    child: Row(
                      mainAxisAlignment: mainSpaceEven,
                      children: [

                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.deepOrange,
                          size: 10.sp,
                        ),

                        Text(
                          "5.0",
                          style: CustomTextStyles.secondaryTextStyles.copyWith(
                            color: Colors.white
                          ),
                        )

                      ],
                    ),
                  )
              )

            ],
          ),

          gap12,

          Text(
            title,
            style: CustomTextStyles.titleTextStyles,
          ),

          gap12,

          Text(
            description,
            style: CustomTextStyles.descriptionTextStyles,
          ),


          gap12,
          
          Container(
            width: 1.sw,
            height: 100.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF7F7F7),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.r))
            ),
            child: Row(
              mainAxisAlignment: mainSpaceAround,
              crossAxisAlignment: crossCenter,
              children: [

                Column(
                  crossAxisAlignment: crossStart,
                  mainAxisAlignment: mainCenter,
                  children: [
                    Text(
                      location,
                      style: CustomTextStyles.descriptionTextStyles.copyWith(
                        fontSize: 12.sp,
                        color: ColorPalates.customGrey
                      ),
                    ),


                    Row(
                      children: [

                        Text(
                         price,
                          style: CustomTextStyles.titleTextStyles,
                        ),

                        gap4,

                        Text(
                          "x 12 interest free",
                          style: CustomTextStyles.descriptionTextStyles.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: ColorPalates.customGrey
                          ),
                        )

                      ],
                    )

                  ],
                ),


                Container(
                  decoration:  BoxDecoration(
                    borderRadius: radius24,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff8482FF),
                        Color(0xff7723FE),
                      ]
                    ),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                      hoverColor: ColorPalates.pink,
                      borderRadius: radius24,
                      child: Container(
                        width: 100.w,
                        height: 50.h,
                        alignment: Alignment.center,
                        child: Text(
                          "See More",
                          style: CustomTextStyles.buttonTextStyles,
                        ),
                      ),
                    ),
                  ),
                )


              ],
            ),
          )


        ],
      ),
    );
  }
}
