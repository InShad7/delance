import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class AtmCardWidget extends StatelessWidget {
  const AtmCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(8.w),
          padding: EdgeInsets.all(16.w),
          height: 180.h,
          width: 350.w,
          decoration: BoxDecoration(
            color: CustomColors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card no.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: CustomColors.grey,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
                    color: CustomColors.red2,
                    child: Text(
                      'VISA',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        fontStyle: FontStyle.italic,
                        color: CustomColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Kconstants.kHeight20,
              Text(
                '****   ****   ****   9988',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                  color: CustomColors.black,
                ),
              ),
              Kconstants.kHeight20,
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Expires',
                    style: GoogleFonts.poppins(
                      color: CustomColors.grey400,
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(text: '   '),
                  TextSpan(
                    text: '06/23',
                    style: GoogleFonts.poppins(
                      color: CustomColors.grey,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
