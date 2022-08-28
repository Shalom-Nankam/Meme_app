import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../MVC/controllers/home_controller.dart';
import '../MVC/views/stateless_view.dart';

class MyFab extends StatelessView<HomeScreen, HomeController> {
  const MyFab(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        controller.navigateToLibrary();
      },
      child: Container(
        height: 66.h,
        width: 66.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100).r,
          color: const Color(0xff1d1d1d),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget fab() {
  return Container(
    height: 66.h,
    width: 66.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100).r,
      color: const Color(0xff1d1d1d),
    ),
    child: const Icon(
      Icons.add,
      color: Colors.white,
    ),
  );
}
