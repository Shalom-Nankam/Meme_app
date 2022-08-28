import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedTile extends StatelessWidget {
  const FeedTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 371.h,
      width: double.infinity.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: SizedBox(
              height: 41.h,
              width: 41.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:
                    Image.asset('assets/images/profile.png', fit: BoxFit.fill),
              ),
            ),
            title: Text('Border',
                style: GoogleFonts.mulish(
                  textStyle: TextStyle(
                      color: const Color(
                        0xff1d1d1d,
                      ),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                )),
            subtitle: Text('19 minutes ago',
                style: GoogleFonts.mulish(
                  textStyle: TextStyle(
                      color: const Color(
                        0xff959292,
                      ),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                )),
            trailing: SvgPicture.asset('assets/images/post_action.svg'),
          ),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 52.0.w),
            child: SizedBox(
              height: 292.h,
              width: 326.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('#Memes',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: const Color(
                              0xff1c1b1f,
                            ),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 233.h,
                    width: 326.w,
                    child: Image.asset('assets/images/post.png'),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 12.h,
                    width: 292.w,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/comment.svg'),
                        SizedBox(width: 9.w),
                        Text('6.8k',
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                  color: const Color(
                                    0xff1c1b1f,
                                  ),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          width: 48.w,
                        ),
                        SvgPicture.asset('assets/images/heart.svg'),
                        SizedBox(width: 9.w),
                        Text('267.1k',
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                  color: const Color(
                                    0xff1c1b1f,
                                  ),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          width: 48.w,
                        ),
                        SvgPicture.asset('assets/images/bookmark.svg'),
                        SizedBox(
                          width: 48.w,
                        ),
                        SvgPicture.asset('assets/images/share.svg'),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
