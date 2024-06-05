import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import 'chart_data.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
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
                'Spending',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                  color: CustomColors.black,
                ),
              ),
              Kconstants.kWidth20,
              Text(
                'July 2018',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  color: CustomColors.grey400,
                ),
              ),
            ],
          ),
          Kconstants.kHeight20,
          ChartData(),
        ],
      ),
    );
  }
}
