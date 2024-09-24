import 'package:ecommerce_mobile_app/core/helpers/extensions.dart';
import 'package:ecommerce_mobile_app/core/routes/routs.dart';
import 'package:ecommerce_mobile_app/ui/screens/onbording_screens/widgets/build_dot.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/ui/screens/onbording_screens/widgets/buld_bage_cpntint.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${currentPage + 1}/3",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  onPageChanged: (page) {
                    setState(
                      () {
                        currentPage = page;
                      },
                    );
                  },
                  children: const [
                    BuldBageCpntint(
                      title: "Choose Products",
                      description:
                          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                      svgImage: "assets/svgs/Onbording1.svg",
                      currentPage: 0,
                    ),
                    BuldBageCpntint(
                      title: "Make Payment",
                      description:
                          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                      svgImage: "assets/svgs/Onbording2.svg",
                      currentPage: 1,
                    ),
                    BuldBageCpntint(
                      title: "Get Your Order",
                      description:
                          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                      svgImage: "assets/svgs/Onbording3.svg",
                      currentPage: 2,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (currentPage > 0 || currentPage == 0)
                    TextButton(
                      onPressed: currentPage == 0
                          ? null
                          : () {
                              controller.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Text(
                        "Prev",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: currentPage == 0
                              ? const Color(0xFFFDFDFD)
                              : Colors.grey,
                        ),
                      ),
                    ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => BuildDot(
                          currentPage: currentPage,
                          index: index,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (currentPage == 2) {
                        context.pushNamed(Routs.signInScreen);
                      } else {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text(
                      currentPage == 2 ? "Get Started" : "Next",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
