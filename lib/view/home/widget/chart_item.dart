

import 'package:delance/view/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class ChartItemTile extends StatelessWidget {
  const ChartItemTile({
    super.key,
    required this.title,
    required this.color,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          color: color,
          size: 15.w,
        ),
        Kconstants.kWidth5,
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: CustomColors.grey,
          ),
        ),
      ],
    );
  }
}
