import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import 'all_content_tab_bar.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 300.w,
                child: TabBar(
                  indicatorColor: CustomColors.bgColor,
                  tabs: const [
                    Tab(text: 'All'),
                    Tab(text: 'Received'),
                    Tab(text: 'Sent'),
                  ],
                  labelColor: CustomColors.black,
                  unselectedLabelColor: CustomColors.grey,
                  labelStyle: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: CustomColors.grey,
              )
            ],
          ),
        ),
        SizedBox(
          height: 200.h,
          child: const TabBarView(
            children: [
              AllContentTab(),
              Center(child: Text('Received content')),
              Center(child: Text('Sent content')),
            ],
          ),
        ),
      ],
    );
  }
}
