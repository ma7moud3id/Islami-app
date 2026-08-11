import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'hadith_model.dart';

const Color dark = Color(0xFF202020);

class HadithCard extends StatelessWidget {
  final Hadith hadith;
  final VoidCallback onTap;
  const HadithCard({
    super.key,
    required this.hadith,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24.r),
      child: Container(
        width: 313.34.w,
        height: 618.h,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/hadith/hadith_card_background.png'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 36.h,
          ),
          child: Column(
            children: [
              Text(
                hadith.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: dark,
                  fontFamily: 'JannaLT',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              
              SizedBox(height: 16.h),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    hadith.content,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                     color: dark,
                     fontFamily: 'JannaLT',
                     fontSize: 16.sp,
                     fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}