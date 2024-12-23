import 'package:feature_first/app/app.dart';
import 'package:feature_first/common/widgets/buttons/hover_button.dart';
import 'package:feature_first/common/widgets/components/item_views/destination_item_view.dart';
import 'package:feature_first/data/model/destination/slider_destination.dart';
import 'package:feature_first/features/landing_page/presentation/landing_page.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DestinationSlider extends HookWidget {
  const DestinationSlider({super.key});

  @override
  Widget build(BuildContext context) {

    final scrollController = useScrollController();


    return Column(
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
                            onTap: (){
                              scrollController.animateTo(
                                scrollController.offset - 300,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
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
                          onTap: (){
                            scrollController.animateTo(
                              scrollController.offset + 300,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
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
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: destination.map((destination)=>
                DestinationItemView(
                  price: destination["price"],
                  title: destination["title"],
                  image: destination["image"],
                  description: destination["description"],
                  location: destination["location"],
               )
            ).toList(),
          ),
        )



      ],
    );
  }
}
