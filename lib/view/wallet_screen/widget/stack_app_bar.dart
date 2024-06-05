import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class StackAppBar extends StatelessWidget {
  const StackAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.grey,
                    blurRadius: 8.0,
                    offset: const Offset(1, 6),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/bgImage.jpeg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                color: Colors.black.withOpacity(0.25),
              ),
            ),
            Positioned(
              top: 40,
              right: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: CustomColors.white,
                      size: 32.sp,
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      color: CustomColors.white,
                      size: 32.sp,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallet',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 38.sp,
                        color: CustomColors.white,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: CustomColors.white,
                      size: 32.sp,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
