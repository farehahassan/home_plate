import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/user/cart/cart_screen.dart';
import 'package:home_plate/views/user/food_details/components/scroll_card.dart';

class FoodDetailScreenTwo extends StatefulWidget {
  const FoodDetailScreenTwo({super.key});

  @override
  State<FoodDetailScreenTwo> createState() => _FoodDetailScreenTwoState();
}

class _FoodDetailScreenTwoState extends State<FoodDetailScreenTwo> {
  int counter = 1; // Initial counter value

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity.w,
            height: 358.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/home/mainfood.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 50.sp, left: 17.sp, right: 18.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: white,
                      size: 30.sp,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(255, 0, 0, 1),
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.sp, right: 18.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mixed Fried Meat",
                      style: GoogleFonts.aoboshiOne(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        color: black,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: primarycolor,
                          size: 13,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "5.9",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: black,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "(",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                        ),
                        Text(
                          "2.3k",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                        ),
                        Text(
                          ")",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, food_detail_screen_route);
                              },
                              child: Text(
                                "See Reviews",
                                style: GoogleFonts.poppins(
                                  fontSize: 13
                                      .sp, //its as design said 10 but i maybe adjut it at 13 or 14
                                  fontWeight: FontWeight.w400,
                                  color: primarycolor,
                                ),
                              ),
                            ),
                            Container(
                              width: 81.w,
                              height: 1.h,
                              decoration: BoxDecoration(
                                color: primarycolor,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Delivery fee",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          "\$",
                          style: GoogleFonts.aoboshiOne(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: dollarColor,
                          ),
                        ),
                        Text(
                          "2.00",
                          style: GoogleFonts.aoboshiOne(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: primarycolor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$",
                          style: GoogleFonts.aoboshiOne(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: dollarColor,
                          ),
                        ),
                        Text(
                          "2.00",
                          style: GoogleFonts.aoboshiOne(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: primarycolor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: decrementCounter,
                          child: Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              border: Border.all(
                                color: primarycolor,
                              ),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: primarycolor,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          counter.toString(),
                          style: GoogleFonts.aoboshiOne(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: primarycolor,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: incrementCounter,
                          child: Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: primarycolor,
                              borderRadius: BorderRadius.circular(50.r),
                              border: Border.all(
                                color: primarycolor,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.sp, right: 42.sp),
                child: SizedBox(
                  width: 333.w,
                  child: Text(
                    "The marinated and battered chicken leg meat and breast meat were pressure fried and their physico-chemical qualities were compared to the conventional fried product (open pan deep fat frying).",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: lightGreyColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.sp,
            ),
            child: Text(
              "Choice of add on",
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: black,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
              padding: EdgeInsets.only(left: 18.sp),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    growable: true,
                    6,
                    (index) => ScrollCard(
                      imagePath: 'assets/images/home/pakistan.png',
                    ),
                  ),
                ),
              )),
          SizedBox(
            // height: 15.h,
            height: 21.h,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Container(
                width: 357.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: primarycolor,
                  borderRadius: BorderRadius.circular(
                    20.sp,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
