import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_maker/MVC/views/stateless_view.dart';
import 'package:meme_maker/widgets/text_field.dart';

import '../controllers/home_controller.dart';

class EditMeme extends StatelessView<HomeScreen, HomeController> {
  const EditMeme(HomeController state, {Key? key}) : super(state, key: key);

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
              onPressed: () {},
              child: Text('Share',
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
                child:
                    Image.asset('assets/images/post.png', fit: BoxFit.contain),
              ),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextForm(
                    title: 'Add Caption',
                    hint: 'Enter Caption',
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const TextForm(
                    title: 'Select Tags',
                    hint: 'Enter Tags',
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10).r),
                    color: const Color(0xff1d1d1d),
                    height: 52.h,
                    minWidth: 380.w,
                    onPressed: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/submit.svg'),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          'Submit',
                          style: GoogleFonts.mulish(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
