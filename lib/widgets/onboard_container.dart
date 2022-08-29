import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MVC/controllers/onboard_controller.dart';
import '../MVC/views/stateless_view.dart';

class OnboardBottom extends StatelessView<OnboardScreen, OnboardController> {
  const OnboardBottom(OnboardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 53.h),
      height: 419.h,
      width: double.infinity.w,
      color: Colors.white,
      child: Column(
        children: [
          SvgPicture.asset('assets/images/profile_picture.svg'),
          SizedBox(
            height: 24.h,
          ),
          Text(
            'Welcome!',
            style: GoogleFonts.mulish(
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
                color: const Color(0xff1d1d1d)),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            'Create and discover the best memes ',
            style: GoogleFonts.mulish(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xff1d1d1d)),
          ),
          SizedBox(
            height: 24.h,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10).r),
            color: const Color(0xff1d1d1d),
            height: 50.h,
            minWidth: 284.w,
            onPressed: () {
              controller.navigateToSignUp();
            },
            child: Text(
              'Let\'s Go!',
              style: GoogleFonts.mulish(
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('By proceeding, you agree to our',
                  style: GoogleFonts.mulish(
                    color: const Color(0xff1d1d1d),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  )),
              SizedBox(
                width: 2.w,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Terms of Service',
                  style: GoogleFonts.mulish(
                      color: const Color(0xff1d1d1d),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
