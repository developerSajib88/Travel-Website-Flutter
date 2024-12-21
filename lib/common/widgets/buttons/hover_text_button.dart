import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HoverTextButton extends HookWidget {
  final String text;
  const HoverTextButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    final isHovering = useState<bool>(false);

    return GestureDetector(
      onTap: (){},
      child: MouseRegion(
        onEnter: (_) => isHovering.value = true,
        onExit: (_) => isHovering.value = false,
        cursor: SystemMouseCursors.click,
        child: Text(
          text,
          style: TextStyle(
            color: isHovering.value ? ColorPalates.pink : ColorPalates.primaryColor,
            fontSize: 14.sp,
            fontWeight: isHovering.value ? FontWeight.w900 : FontWeight.w800,
          ),
        ),
      ),
    );
  }
}