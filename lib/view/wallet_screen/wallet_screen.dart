import 'package:delance/view/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/atm_card_widget.dart';
import 'widget/send_money.dart';
import 'widget/stack_app_bar.dart';
import 'widget/tab_bar_widget.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Container(
          color: CustomColors.bgColor,
          child: Stack(
            children: [
              const StackAppBar(),
              const Positioned(
                top: 190,
                right: 0,
                left: 0,
                child: AtmCardWidget(),
              ),
              Positioned(
                top: 390,
                right: 0,
                left: 0,
                child: Container(
                  margin: EdgeInsets.all(16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Send Money',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: CustomColors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: CustomColors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    SendMoneyCards(),
                  ],
                ),
              ),
              const Positioned(
                top: 620,
                left: 0,
                right: 0,
                child: TabBarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
