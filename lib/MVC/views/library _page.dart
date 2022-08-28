import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_maker/MVC/views/stateless_view.dart';
import 'package:meme_maker/widgets/search_box.dart';

import '../controllers/home_controller.dart';

class LibraryPage extends StatelessView<HomeScreen, HomeController> {
  const LibraryPage(HomeController state, {Key? key}) : super(state, key: key);

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
        title: Text('Your Library',
            style: GoogleFonts.mulish(
              textStyle: TextStyle(
                  color: const Color(
                    0xff1d1d1d,
                  ),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySearchBox(controller, 'Search tags,people...'),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () => controller.navigateToEdit(),
                child: SizedBox(
                  height: 50.h,
                  width: 50.w,
                  child: Image.asset(
                    'assets/images/post.png',
                    fit: BoxFit.fill,
                  ),
                ),
              )
              // GridView.builder(
              //     gridDelegate: gridDelegate, itemBuilder: itemBuilder)
            ],
          ),
        ),
      ),
    );
  }
}
