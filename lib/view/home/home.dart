import 'package:delance/view/utils/colors.dart';
import 'package:delance/view/wallet_screen/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/cash_widget.dart';
import 'widget/chart_widget.dart';
import 'widget/custom_app_bar.dart';
import 'widget/linear_progress_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const CashWidget(),
          const ChartWidget(),
          const LinearProgressWidget(),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WalletScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(16.w),
                width: double.infinity,
                color: CustomColors.bgColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallet',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                        color: CustomColors.black,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: CustomColors.grey,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
