import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import 'cash_cards.dart';

class CashWidget extends StatelessWidget {
  const CashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: CustomColors.bgColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Accounts',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 24.sp,
              color: CustomColors.black,
            ),
          ),
          Kconstants.kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CashCards(
                  color: CustomColors.blue3,
                  title: 'Cash',
                  amount: '\$ 35.17',
                ),
              ),
              Kconstants.kWidth,
              Expanded(
                child: CashCards(
                  color: CustomColors.red,
                  title: 'Credit Debt',
                  amount: '- \$ 4320.0',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
