import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_maker/MVC/views/stateless_view.dart';
import 'package:meme_maker/widgets/edit_bottom_bar.dart';

import '../controllers/home_controller.dart';

class EditMemePage extends StatelessView<HomeScreen, HomeController> {
  const EditMemePage(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(
              0xff1d1d1d,
            ),
            size: 24,
          ),
        ),
        title: Text('Edit Meme',
            style: GoogleFonts.mulish(
              textStyle: TextStyle(
                  color: const Color(
                    0xff1d1d1d,
                  ),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: TextButton(
              onPressed: () {
                controller.toEditScreen();
              },
              child: Text('Next',
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        color: const Color(
                          0xff000000,
                        ),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset('assets/images/post.png',
                      fit: BoxFit.contain),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: EditBottomBar(controller),
    );
  }
}
