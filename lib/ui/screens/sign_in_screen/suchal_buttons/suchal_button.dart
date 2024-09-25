import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuchalButton extends StatelessWidget {
  final String image;
  const SuchalButton({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
      child: Container(
        height: 56.h,
        width: 56.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: const Color(0xFFFCF3F6),
          border: Border.all(
            color: const Color(0xFFF83758), // Set the outline color
            width: 1.w, // Set the outline thickness
          ),
        ),
        child: SizedBox(
          width: 24.w,
          child: Image.asset(
            image,
            width: 24.w,
          ),
        ),
      ),
    );
  }
}
