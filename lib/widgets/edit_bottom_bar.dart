import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MVC/controllers/home_controller.dart';
import '../MVC/views/stateless_view.dart';

class EditBottomBar extends StatelessView<HomeScreen, HomeController> {
  const EditBottomBar(HomeController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: 0,
      items: bottomItem,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.mulish(
        textStyle: TextStyle(
            color: const Color(
              0xff1d1d1d,
            ),
            fontSize: 12.sp,
            fontWeight: FontWeight.w600),
      ),
      unselectedLabelStyle: GoogleFonts.mulish(
        textStyle: TextStyle(
            color: const Color(
              0xff1d1d1d,
            ),
            fontSize: 12.sp,
            fontWeight: FontWeight.w400),
      ),
      elevation: 2,
    );
  }
}

List<BottomNavigationBarItem> bottomItem = [
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/change_media.svg',
      ),
      label: "Change Media"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/play.svg',
      ),
      label: "Add text"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/watermark.svg',
      ),
      label: "Watermark"),
];
