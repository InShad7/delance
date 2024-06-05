import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class LinearProgressWidget extends StatelessWidget {
  const LinearProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: CustomColors.bgColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Budgets',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                  color: CustomColors.black,
                ),
              ),
              Kconstants.kWidth20,
              Text(
                'July',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  color: CustomColors.grey400,
                ),
              ),
            ],
          ),
          Kconstants.kHeight,
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: CustomColors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: FAProgressBar(
              currentValue: 68.0,
              size: 18,
              displayText: '%',
              displayTextStyle: GoogleFonts.poppins(
                color: CustomColors.white,
                fontSize: 12.5.sp,
              ),
              borderRadius: BorderRadius.circular(20.r),
              backgroundColor: CustomColors.grey300,
              progressGradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 33, 61, 243).withOpacity(1),
                  const Color.fromARGB(255, 116, 76, 175).withOpacity(0.75),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
