import 'package:ecommerce_mobile_app/core/widgets/custome_botton.dart';
import 'package:ecommerce_mobile_app/core/widgets/custome_textfeald.dart';
import 'package:ecommerce_mobile_app/core/widgets/text_Botton.dart';
import 'package:ecommerce_mobile_app/ui/screens/sign_in_screen/suchal_buttons/suchal_button.dart';
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        const Text(
                          "Welcome\n Back!",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        const CustomTextField(
                          hintText: "Username or Email",
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomTextField(
                          hintText: "password",
                          obscuretext: true,
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text("Forget Password ? "),
                            )),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomeBotton(
                    onpressd: () {},
                    textBotton: "Login",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  child: const Text(
                    "- OR Continue with -",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SuchalButton(
                      image: 'assets/images/facebook.png',
                    ),
                    SuchalButton(
                      image: 'assets/images/apple.png',
                    ),
                    SuchalButton(
                      image: 'assets/images/google.png',
                    ),
                  ],
                ),
                CustomeTextBotton(
                    text: "Create An Account ! ",
                    textBotton: "Sign Up",
                    onpressd: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
