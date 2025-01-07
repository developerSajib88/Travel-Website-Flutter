import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedCounter extends HookWidget {
  final int value;
  final String? concreateText;
  final double? fonSize;
  const AnimatedCounter({
    super.key,
    this.fonSize,
    this.concreateText,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {

    final counter = useState<int>(0);

    void startCounterAnimation() {
      Future.delayed(const Duration(seconds: 1), () {
        for (int i = 1; i <= value; i++) {
          Future.delayed(Duration(milliseconds: i * 1), () {
            Future.microtask(()=> counter.value = i);
          });
        }
      });
    }

    useEffect((){
      startCounterAnimation();
      return null;
    },[]);

    return Text(
      counter.value.toString() + (concreateText ?? ""),
      style: CustomTextStyles.primaryTextStyles.copyWith(
          color: Colors.pink,
          fontSize: fonSize ?? 18.sp
      ),
    );
  }
}