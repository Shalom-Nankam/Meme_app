import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Trending Templates',
          style: GoogleFonts.mulish(
            fontStyle: FontStyle.normal,
            textStyle: TextStyle(
                color: const Color(0xff000000),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 16.h,
          width: 55.w,
          child: GestureDetector(
            child: Row(
              children: [
                Text(
                  'See All',
                  style: GoogleFonts.mulish(
                    fontStyle: FontStyle.normal,
                    textStyle: TextStyle(
                        color: const Color(0xff000000),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: const Color(0xff1d1d1d),
                  size: 10.sp,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
