import 'package:ecommerce_mobile_app/core/widgets/custome_botton.dart';
import 'package:ecommerce_mobile_app/core/widgets/custome_textfeald.dart';
import 'package:ecommerce_mobile_app/core/widgets/text_Botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              const Text(
                "Welcome\n Back!",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 36.h,
              ),
              CustomTextField(
                hintText: "Username or Email",
                prefixIcon: Expanded(
                  child: SizedBox(
                    height: 10,
                    child: SvgPicture.asset(
                      'assets/svgs/User.svg',
                      fit: BoxFit.contain,
                      height: 10,
                    ),
                  ),
                ),
              ),
              const CustomTextField(
                hintText: "password",
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              // SizedBox(
              //   height: 83.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomeTextBotton(
                    onpressd: () {},
                    text: '',
                    textBotton: 'Forget Password',
                  ),
                ],
              ),
              CustomeBotton(
                onpressd: () {},
                textBotton: "Login",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
