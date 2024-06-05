import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  final Size preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: CustomColors.bgColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Overview',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 27.sp,
              color: CustomColors.black,
            ),
          ),
          Text(
            'Cancel',
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              color: CustomColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
