import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MVC/controllers/home_controller.dart';
import '../MVC/views/stateless_view.dart';

class HomeBottomBar extends StatelessView<HomeScreen, HomeController> {
  const HomeBottomBar(HomeController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 2,
      notchMargin: 25.h,
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        // padding: EdgeInsets.only(top: 20.h),
        height: 70.h,
        width: double.infinity.w,
        child: Row(
          children: [
            SizedBox(
              width: 159.w,
            ),
            appBarItem(
                'Drafts',
                SvgPicture.asset('assets/images/draft.svg', fit: BoxFit.fill),
                19.0),
            SizedBox(
              width: 60.w,
            ),
            appBarItem(
                'Saved',
                SvgPicture.asset('assets/images/bookmark.svg',
                    fit: BoxFit.fill),
                22.0),
            SizedBox(
              width: 60.w,
            ),
            appBarItem('Profile',
                SvgPicture.asset('assets/images/pp.svg', fit: BoxFit.fill), 27),
          ],
        ),
      ),
    );
  }
}

Widget appBarItem(String title, Widget item, double height) {
  return GestureDetector(
    child: SizedBox(
      height: 55.h,
      width: 37.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: height.h,
            width: 19.h,
            child: item,
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(title,
              style: GoogleFonts.inter(
                fontStyle: FontStyle.normal,
                textStyle: TextStyle(
                    color: const Color(
                      0xff1d1d1d,
                    ),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ))
        ],
      ),
    ),
  );
}
