import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_maker/MVC/views/stateless_view.dart';
import 'package:meme_maker/widgets/feed_tile.dart';
import 'package:meme_maker/widgets/float_button.dart';
import 'package:meme_maker/widgets/header_title.dart';
import 'package:meme_maker/widgets/home_bottom_bar.dart';
import 'package:meme_maker/widgets/home_page_listtile.dart';
import 'package:meme_maker/widgets/search_box.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessView<HomeScreen, HomeController> {
  const HomePage(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: SizedBox(
            height: 10.66.h,
            width: 10.52.w,
            child: SvgPicture.asset('assets/images/profile_picture.svg',
                fit: BoxFit.scaleDown),
          ),
        ),
        title: Text('Discover',
            style: GoogleFonts.mulish(
              fontStyle: FontStyle.normal,
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
            child: SvgPicture.asset('assets/images/notification.svg'),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySearchBox(controller, 'Enter meme Tag'),
              SizedBox(
                height: 32.h,
              ),
              const HeaderTitle(),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 95.h,
                width: double.infinity.w,
                child: Expanded(
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) => const TemplateTile()),
                      itemCount: 10,
                      separatorBuilder: ((context, index) => SizedBox(
                            width: 16.w,
                          ))),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text('Your Feed',
                  style: GoogleFonts.mulish(
                    fontStyle: FontStyle.normal,
                    textStyle: TextStyle(
                        color: const Color(
                          0xff000000,
                        ),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 32.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                      height: 433.24.h,
                      width: double.infinity.w,
                      child: ListView.builder(
                        itemBuilder: (context, index) => const FeedTile(),
                        itemCount: 5,
                        itemExtent: 371.h,
                        // separatorBuilder: (context, index) => Divider(
                        //   color: const Color(0xff959292).withOpacity(0.5),
                        //   height: 30.h,
                        // ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(controller),
      floatingActionButton: MyFab(controller),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }
}
