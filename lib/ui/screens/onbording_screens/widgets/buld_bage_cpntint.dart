import 'package:ecommerce_mobile_app/core/theme/style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BuldBageCpntint extends StatelessWidget {
  final String svgImage;
  final String title;
  final String description;
  final int currentPage; // Add this to track the current page

  const BuldBageCpntint({
    super.key,
    required this.title,
    required this.description,
    required this.svgImage,
    required this.currentPage, // Pass this from the parent widget
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //image
                SizedBox(
                  height: 330.h,
                  width: 350.w,
                  child: SvgPicture.asset(
                    svgImage,
                    width: 300.w,
                  ),
                ),
                // SizedBox(height: 10.h),
                //title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                //description
                SizedBox(height: 10.h),
                Text(
                  textAlign: TextAlign.center,
                  description,
                  style: MyTextStyles.font14semiBold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
