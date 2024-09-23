import 'package:flutter/material.dart';

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
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff002f8c), Color(0xff0080ba), Color(0xffbd15ad)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textBotton,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Icon(
                Icons.arrow_right_alt,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
