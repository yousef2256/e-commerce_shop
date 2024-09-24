import 'package:ecommerce_mobile_app/core/theme/style/colors.dart';
import 'package:flutter/material.dart';

class CustomeTextBotton extends StatelessWidget {
  final String? text;
  final String textBotton;
  final VoidCallback onpressd;
  const CustomeTextBotton({
    super.key,
    required this.text,
    required this.textBotton,
    required this.onpressd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text ?? "",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: ColorManegar.lightegray,
          ),
        ),
        TextButton(
          onPressed: onpressd,
          child: Text(
            textBotton,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
