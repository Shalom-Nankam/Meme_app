import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_maker/MVC/controllers/onboard_controller.dart';
import 'package:meme_maker/utils/global_variables.dart';

class TextForm extends StatelessWidget {
  const TextForm(
      {super.key,
      required this.title,
      required this.hint,
      required this.control});

  final TextEditingController control;
  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: GoogleFonts.mulish(
              fontStyle: FontStyle.normal,
              textStyle: TextStyle(
                  color: const Color(
                    0xff1d1d1d,
                  ),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            )),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          height: 50.h,
          width: 380.w,
          child: TextFormField(
            controller: control,
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
        ),
      ],
    );
  }
}

class TextForm2 extends StatelessWidget {
  const TextForm2(
      {super.key,
      required this.title,
      required this.hint,
      required this.onboard});

  final OnboardController onboard;

  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: GoogleFonts.mulish(
              fontStyle: FontStyle.normal,
              textStyle: TextStyle(
                  color: const Color(
                    0xff1d1d1d,
                  ),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            )),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          height: 50.h,
          width: 380.w,
          child: TextFormField(
            obscureText: !showMyPassword,
            controller: onboard.passwordController,
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
              suffixIcon: GestureDetector(
                // onTap: onboard.setCheck(!showMyPassword),
                child: SvgPicture.asset('assets/images/hide.svg',
                    height: 15.h, width: 18.w, fit: BoxFit.scaleDown),
              ),
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
        ),
      ],
    );
  }
}
