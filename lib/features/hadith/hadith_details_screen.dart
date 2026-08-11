import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'hadith_model.dart';

const Color gold = Color(0xFFE2BE7F);
const Color dark = Color(0xFF202020);

class HadithDetailsScreen extends StatelessWidget {
  final Hadith hadith;

  const HadithDetailsScreen({
    super.key,
    required this.hadith,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            SizedBox(
              height: 60.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'Hadith ${hadith.number}',
                    style: TextStyle(
                      color: gold,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'JannaLT.Bold',
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: gold,
                        size: 22.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(
                    top: -12.h,
                    bottom: -30.h,
                    child: Image.asset(
                      'assets/images/hadith/hadith_details_background.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.w),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),

                        Text(
                          hadith.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: gold,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'JannaLT.Bold',
                          ),
                        ),

                        SizedBox(height: 15.h),

                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Text(
                              hadith.content,
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: gold,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'JannaLT.Bold',
                                height: 1.9,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}