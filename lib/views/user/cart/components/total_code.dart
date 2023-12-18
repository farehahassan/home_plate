// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:home_plate/constants/color.dart';
// import 'package:home_plate/views/user/cart/components/total_num.dart';

// class TotalCode extends StatefulWidget {
//   const TotalCode({super.key});

//   @override
//   State<TotalCode> createState() => _TotalCodeState();
// }

// class _TotalCodeState extends State<TotalCode> {
//   @override
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/base/components/orange_button.dart';
import 'package:home_plate/views/user/cart/components/total_num.dart';

class TotalCode extends StatefulWidget {
  const TotalCode({super.key});

  @override
  State<TotalCode> createState() => _TotalCodeState();
}

class _TotalCodeState extends State<TotalCode> {
  List<String> _text = [
    "Subtotal",
    "Tex and Fees",
    "Delivery Fees",
    "Total",
  ];
  List<String> _num = [
    "50.00",
    "5.00",
    "4.00",
    "62.00",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 70.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200.w,
                  height: 60.h,
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: lightGreyColor,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 10.sp, left: 27.sp),
                      hintText: "voucher code",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: lightGreyColor,
                      ),
                    ),
                  ),
                ),
                // Spacer(),
                Container(
                  // color: primarycolor,
                  width: 116.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                    child: Text(
                      "Apply",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                right: 16.sp,
                left: 16.sp,
                top: 20.sp,
              ),
              child: Column(
                children: List.generate(
                  4,
                  (index) => TotalNum(
                    text: _text[index],
                    total: _num[index],
                  ),
                ),
              ),
            ),
          ),
          OrangeButton(text: "Checkout", ontap: () {})
        ],
      ),
    );
  }
}
