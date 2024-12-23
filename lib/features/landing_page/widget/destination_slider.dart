import 'package:feature_first/app/app.dart';
import 'package:feature_first/common/widgets/buttons/hover_button.dart';
import 'package:feature_first/common/widgets/components/item_views/destination_item_view.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationSlider extends StatelessWidget {
  const DestinationSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: mainSpaceBetween,
            children: [

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

                  gap6,

                  Text(
                    "Explore top destination",
                    style: CustomTextStyles.titleTextStyles.copyWith(
                      fontSize: 20.sp
                    ),
                  ),
                ],
              ),

              Row(
                children: [

                  Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        color: ColorPalates.purple,
                        shape: BoxShape.circle,
                        boxShadow: primaryShadow
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: SizedBox(
                          width: 40.w,
                          height: 40.w,
                          child: InkWell(
                              onLongPress: (){},
                              borderRadius: radiusCircle,
                              hoverColor: ColorPalates.pink,
                              child: Padding(
                                padding: paddingLeft6,
                                child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 20.sp,
                                    color: Colors.white,
                                ),
                              )
                          ),
                        ),
                      ),
                  ),


                  gap24,


                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorPalates.purple,
                        shape: BoxShape.circle,
                        boxShadow: primaryShadow
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: SizedBox(
                        width: 40.w,
                        height: 40.w,
                        child: InkWell(
                            onLongPress: (){},
                            borderRadius: radiusCircle,
                            hoverColor: ColorPalates.pink,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.sp,
                              color: Colors.white,
                            )
                        ),
                      ),
                    ),
                  ),


                ],
              ),


            ],
          ),

          gap24,

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(15, (index)=> DestinationItemView()),
            ),
          )

        ],
      ),
    );
  }
}
