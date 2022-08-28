import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meme_maker/MVC/views/stateless_view.dart';

import '../../widgets/onboard_container.dart';
import '../controllers/onboard_controller.dart';

class OnboardView extends StatelessView<OnboardScreen, OnboardController> {
  const OnboardView(OnboardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity.w,
        // padding: EdgeInsets.only(top: 149.h),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              const Color(0xfff3f3f3),
              const Color(0xffc9eefc).withOpacity(1.0)
            ])),
        child: Column(
          children: [
            SizedBox(
              height: 149.h,
            ),
            Expanded(
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Positioned(
                    left: 46.w, bottom: 323.h, child: const TopContainer()),
                OnboardBottom(controller),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.w, 30.h, 10.w, 30.h),
      height: 454.h,
      width: 336.6.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r, color: Colors.white),
      child: Column(
        children: [
          Text(
            'Memes forever?',
            style: GoogleFonts.manrope(
              color: const Color(0xff1d1d1d),
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(
            height: 352.h,
            width: 316.6.w,
            child: Stack(children: [
              Image.asset(
                'assets/images/bull.png',
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 41.h,
                left: 218.w,
                child: SvgPicture.asset(
                  'assets/images/chat.svg',
                  fit: BoxFit.contain,
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
