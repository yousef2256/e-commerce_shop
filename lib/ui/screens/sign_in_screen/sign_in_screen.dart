import 'package:ecommerce_mobile_app/core/widgets/custome_textfeald.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome\n Back!",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
              ),
              CustomTextField(hintText: "Username or Email"),
            ],
          ),
        ),
      ),
    );
  }
}
