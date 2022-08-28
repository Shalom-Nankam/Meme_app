import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

class TemplateTile extends StatelessWidget {
  const TemplateTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width: 93.w,
      child: Image.asset('assets/images/batman.png', fit: BoxFit.fill),
    );
  }
}
