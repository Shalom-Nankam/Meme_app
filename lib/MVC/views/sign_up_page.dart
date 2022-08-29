import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_maker/MVC/views/stateless_view.dart';
import 'package:meme_maker/widgets/text_field.dart';

import '../controllers/onboard_controller.dart';

class SignUp extends StatelessView<OnboardScreen, OnboardController> {
  const SignUp(OnboardController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Color(0xff000000),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 0.h),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 103.h,
                width: 102.38.w,
                child: SvgPicture.asset('assets/images/profile_picture.svg',
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Center(
              child: Text(
                'Create your new account',
                style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: const Color(0xff000000)),
              ),
            ),
            SizedBox(
              height: 64.h,
            ),
            TextForm(
              control: controller.emailController,
              title: 'Email',
              hint: 'Enter Email',
            ),
            SizedBox(
              height: 24.h,
            ),
            TextForm(
              control: controller.usernameController,
              title: 'Username',
              hint: 'Enter Username',
            ),
            SizedBox(
              height: 24.h,
            ),
            TextForm2(
              onboard: controller,
              title: 'Password',
              hint: 'Enter Password',
            ),
            SizedBox(
              height: 64.h,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10).r),
              color: const Color(0xff1d1d1d),
              height: 50.h,
              minWidth: 380.w,
              onPressed: () {
                controller
                    .createNewUser(controller.emailController.text,
                        controller.passwordController.text)
                    .then((res) {
                  if (res["Status"] == true) {
                    controller.toHomeScreen();
                  } else {}
                });
              },
              child: Text(
                'Sign Up',
                style: GoogleFonts.mulish(
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: const Color(0xff1d1d1d),
                    )),
                SizedBox(
                  width: 4.w,
                ),
                GestureDetector(
                  onTap: () {
                    controller.navigateToLogin();
                  },
                  child: Text('Sign in',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: const Color(0xff1d1d1d),
                      )),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
