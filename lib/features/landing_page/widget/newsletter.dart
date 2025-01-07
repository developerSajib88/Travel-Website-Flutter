import 'package:feature_first/app/app.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Newsletter extends StatelessWidget {
  const Newsletter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1.sw,
      height: 350.h,
      decoration: ShapeDecoration(
        color: const Color(0xFFFACD49),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.59),
        ),
      ),
      child: Row(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossStart,
        children: [

          Expanded(
            child: Image.asset(
              Assets.imagesNewsletterDraw1,
              width: 250.w,
            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: crossCenter,
              mainAxisAlignment: mainCenter,
              children: [
            
                Text(
                  "Sign up to our newsletter",
                  style: CustomTextStyles.header.copyWith(
                      fontSize: 30.sp
                  ),
                ),
            
                gap12,
            
                SizedBox(
                  width: 380.w,
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur. "
                        "Egestas et feugiat purus enim facilisi nunc blandit nullam.",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.descriptionTextStyles,
                  ),
                ),
            
                gap24,
            
                SizedBox(
                  width: 410.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Your email address",
                      contentPadding: padding20,
                      suffixIcon: Padding(
                        padding: paddingRight10,
                        child: SizedBox(
                          width: 42.w,
                          height: 42.w,
                          child: FloatingActionButton(
                            onPressed: (){},
                            backgroundColor: ColorPalates.purple,
                            shape: RoundedRectangleBorder(borderRadius: radius18),
                            child: Icon(
                              FontAwesomeIcons.solidPaperPlane,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: radius16,
                        borderSide: BorderSide.none
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: radius16,
                          borderSide: BorderSide.none
                      )
                    ),
                  ),
                ),
            
              ],
            ),
          ),

          Expanded(
            child: Image.asset(
              Assets.imagesNewsletterDraw2,
              width: 250.w,
            ),
          ),

        ],
      ),
    );
  }
}
