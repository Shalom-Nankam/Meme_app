import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key, required this.title, required this.hint});

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
              // suffixIcon: title.toLowerCase() == 'password'? : null,
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
  const TextForm2({super.key, required this.title, required this.hint});

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
              // suffixIcon: title.toLowerCase() == 'password'? : null,
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
