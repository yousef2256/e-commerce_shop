import 'package:ecommerce_mobile_app/core/theme/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeBotton extends StatelessWidget {
  final String textBotton;
  final VoidCallback onpressd;
  const CustomeBotton(
      {super.key, required this.textBotton, required this.onpressd});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressd,
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorManegar.red,
        ),
        child: Center(
          child: Text(
            textBotton,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
