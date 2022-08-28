import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MVC/controllers/home_controller.dart';
import '../MVC/views/stateless_view.dart';

class MySearchBox extends StatelessView<HomeScreen, HomeController> {
  const MySearchBox(HomeController state, this.hint, {Key? key})
      : super(state, key: key);
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 380.w,
      child: TextField(
        style: GoogleFonts.mulish(
          fontStyle: FontStyle.normal,
          textStyle: TextStyle(
              color: const Color(
                0xff383838,
              ),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400),
        ),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
              height: 10.h,
              width: 10.w,
              child: SvgPicture.asset('assets/images/search.svg',
                  fit: BoxFit.scaleDown)),
          hintText: hint,
          hintStyle: GoogleFonts.mulish(
            fontStyle: FontStyle.normal,
            textStyle: TextStyle(
                color: const Color(
                  0xff1d1d1d,
                ),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff38cb89),
              ),
              borderRadius: BorderRadius.circular(6).r),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff1d1d1d),
              ),
              borderRadius: BorderRadius.circular(10).r),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff1d1d1d),
              ),
              borderRadius: BorderRadius.circular(10).r),
        ),
      ),
    );
  }
}
