import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class AllContentTab extends StatelessWidget {
  const AllContentTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '23 July 2019',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              color: CustomColors.grey,
            ),
          ),
          Kconstants.kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundColor: CustomColors.yellow,
                child: Icon(
                  size: 30,
                  Icons.article,
                  color: CustomColors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Florenti Restaurant',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: CustomColors.black,
                    ),
                  ),
                  Kconstants.kHeight5,
                  Text(
                    '07:33    20:04',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: CustomColors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                '-\$ 251.0',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: CustomColors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
