import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDot extends StatelessWidget {
  final int currentPage;
  final int index;

  const BuildDot({
    super.key,
    required this.currentPage,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0.h,
      width: currentPage == index ? 40.0.w : 8.0.w,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.circular(5.0.r),
      ),
    );
  }
}
