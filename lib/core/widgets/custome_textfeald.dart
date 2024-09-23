import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool? obscuretext;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscuretext,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Container(
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: const Color(0xFFA8A8A9)),
        ),
        child: TextFormField(
          obscureText: obscuretext ?? false,
          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintStyle: const TextStyle(
              fontSize: 13,
              color: Color(0xFF676767),
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            prefixIconColor: Colors.grey,
            suffixIconColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
