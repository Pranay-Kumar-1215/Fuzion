import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fuzion/widgets/keyboard.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controllers/imgupload_controller.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImgUploadController imgUploadController = Get.put(ImgUploadController());
    return Scaffold(
      backgroundColor: Color(0xff1C1F2A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset("assets/arrow.png"),
                    decoration: BoxDecoration(
                        color: Color(0xFF555E78), shape: BoxShape.circle),
                    width: 50.w,
                    height: 50.h,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/profile.png",
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFF555E78), shape: BoxShape.circle),
                    width: 50.w,
                    height: 50.h,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.all(18.sp),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Text(
                      "Meditation app ui ideas for daily routine",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  width: 260.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF7169E2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.sp),
                          bottomLeft: Radius.circular(16.sp),
                          topRight: Radius.circular(16.sp))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18.sp),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Text(
                      "Here are images for suggested query",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  width: 260.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF3D4354),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.sp),
                          bottomRight: Radius.circular(16.sp),
                          topRight: Radius.circular(16.sp))),
                ),
              ),
            ),
            Container(
              width: 325.w,
              height: 310.h,
              decoration: BoxDecoration(
                color: Color(0xFF3D4354),
                borderRadius: BorderRadius.all(Radius.circular(16.sp)),
              ),
              child: GestureDetector(
                child: Padding(
                  padding: EdgeInsets.all(18.sp),
                  child: MasonryGridView.count(
                    itemCount: 4,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 14,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 16.sp),
                        width: 119.w,
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.sp))),
                        height: 120.h,
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Tap to Load more",
              style: TextStyle(color: Color(0xFFE0E0E0), fontSize: 12.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.all(18.sp),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Text(
                      "Meditation app tagline ideas for daily routine, use it for tracking stress, prayer and many tasks.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  width: 282.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF7169E2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.sp),
                          bottomLeft: Radius.circular(16.sp),
                          topRight: Radius.circular(16.sp))),
                ),
              ),
            ),
            KeyBoard()
          ],
        ),
      ),
    );
  }
}
