import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meme_maker/MVC/controllers/onboard_controller.dart';


void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, widget) => const MaterialApp(
        title: 'Material App',
        home: OnboardScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
