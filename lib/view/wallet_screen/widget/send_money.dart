import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

// ignore: must_be_immutable
class SendMoneyCards extends StatelessWidget {
  SendMoneyCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.bgColor2,
      height: 150.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: 16.w),
          height: 160.h,
          width: 120.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: CustomColors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: index == 0 ? 25 : 35,
                backgroundColor: CustomColors.blue3,
                backgroundImage:
                    index != 0 ? const AssetImage('assets/dp.jpg') : null,
                child: index == 0
                    ? Icon(
                        Icons.add,
                        size: 30,
                        color: CustomColors.white,
                      )
                    : const SizedBox(),
              ),
              Kconstants.kHeight,
              Text(
                titleNames[index],
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: CustomColors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> titleNames = [
    'Add money',
    'Anna',
    'Gillian',
    'Charlie',
  ];
}
