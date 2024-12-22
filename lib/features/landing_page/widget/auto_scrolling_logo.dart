
import 'package:feature_first/app/app.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AutoScrollingLogos extends StatefulHookWidget {
  const AutoScrollingLogos({super.key});

  @override
  State<AutoScrollingLogos> createState() => _AutoScrollingLogosState();
}

class _AutoScrollingLogosState extends State<AutoScrollingLogos> {
  final ScrollController _scrollController = ScrollController();
  late final double _scrollSpeed;

  @override
  void initState() {
    super.initState();
    _scrollSpeed = 50; // Pixels per second
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(Duration.zero, () async {
      while (mounted) {
        await _scrollController.animateTo(
          _scrollController.offset + _scrollSpeed,
          duration: const Duration(seconds: 2),
          curve: Curves.linear,
        );

        if (_scrollController.offset >= _scrollController.position.maxScrollExtent) {
          _scrollController.jumpTo(0);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final onHover = useState<bool>(false);

    List<String> logos = [
      "assets/logos/expedia.png",
      "assets/logos/tripadvisor.png",
      "assets/logos/airbnb.png",
      "assets/logos/booking.png",
      "assets/logos/rbitz.png",
      "assets/logos/expedia.png",
      "assets/logos/tripadvisor.png",
      "assets/logos/airbnb.png",
      "assets/logos/booking.png",
      "assets/logos/rbitz.png"
    ];

    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 50),
        itemCount: logos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: MouseRegion(
              onEnter: (value)=> onHover.value = true,
              onExit: (value)=> onHover.value = false,
              cursor: SystemMouseCursors.click,
              child: Image.asset(
                  logos[index],
                color: onHover.value ? Colors.blue : null,
              )
            ),
          );
        },
      ),
    );
  }
}