import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class HoverButton extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final Color? hoverColor;
  const HoverButton({
    super.key,
    this.text,
    this.backgroundColor,
    this.hoverColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor ?? ColorPalates.purple,
          borderRadius: radiusCircle,
          boxShadow: backgroundColor == null ? primaryShadow : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          hoverColor: hoverColor ?? ColorPalates.pink,
          borderRadius: radiusCircle,
          hoverDuration: const Duration(milliseconds: 200),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
            child: Text(
              text ?? "",
              style: CustomTextStyles.buttonTextStyles.copyWith(
                color: backgroundColor != null ? Colors.black : null,
                fontWeight: backgroundColor != null ? FontWeight.w900 : null
              ),
            ),
          ),
        ),
      ),
    );
  }
}