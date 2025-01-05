import 'package:feature_first/common/widgets/buttons/hover_text_button.dart';
import 'package:feature_first/common/widgets/components/item_views/destination_item_view.dart';
import 'package:feature_first/data/model/destination/slider_destination.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopDestinations extends StatelessWidget {
  const TopDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
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


            const Spacer(),

            const HoverTextButton(text: "City"),
            gap24,
            const HoverTextButton(text: "Mountain"),
            gap24,
            const HoverTextButton(text: "Forest"),
            gap24,
            const HoverTextButton(text: "Island"),

            gap24,
            InkWell(
              onTap: (){},
              hoverColor: ColorPalates.pink.withOpacity(0.1),
              borderRadius: radius8,
              child: Padding(
                padding: padding4,
                child: Text(
                  "See all",
                  style: CustomTextStyles.buttonTextStyles.copyWith(
                    color: ColorPalates.pink,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

          ],
        ),

        gap12,

        Wrap(
          children: destination.sublist(0,6).map((destination)=>
              DestinationItemView(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20.h, 30.w, 30.w),
                price: destination["price"],
                title: destination["title"],
                image: destination["image"],
                description: destination["description"],
                location: destination["location"],
              )
          ).toList(),
        )


      ],
    );
  }
}
