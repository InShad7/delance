import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class CashCards extends StatelessWidget {
  const CashCards({
    super.key,
    required this.title,
    required this.amount,
    required this.color,
  });

  final String title;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      height: 140.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: CustomColors.grey,
            blurRadius: 8.0,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
              color: CustomColors.white,
            ),
          ),
          Text(
            amount,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 22.sp,
              color: CustomColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
