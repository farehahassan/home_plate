import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/base/onboarding/onboardlist.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

// class OnboardingModel {
//   final String image;
//   final String title;
//   final String description;

//   OnboardingModel({
//     required this.image,
//     required this.title,
//     required this.description,
//   });
// }

// List<OnboardingModel> pages = [
//   OnboardingModel(
//     image: "assets/images/onboard/onboard1.png",
//     title: "Healthy Food",
//     description: "Description 1",
//   ),
//   OnboardingModel(
//     image: "assets/images/onboard/onboard2.png",
//     title: "Tasty Food",
//     description: "Description 2",
//   ),
//   OnboardingModel(
//     image: "assets/images/onboard/onboard3.png",
//     title: "Let's eat",
//     description: "Description 3",
//   ),
// ];

class _OnboardState extends State<Onboard> {
  final pageController = PageController();
  int currentIndex = 0;
  void onChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 60.sp),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, login_screen_route);
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.roboto(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: onChanged,
                children: _buildPageViewItems(),
              ),
            ),
            _buildDotIndicator(),
            SizedBox(height: 28.h),
            _buildNextButton(),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }

  // Next/Start Button
  Widget _buildNextButton() {
    return InkWell(
      onTap: () {
        if (currentIndex == pages.length - 1) {
          Navigator.pushNamed(context, login_screen_route);
        } else {
          // Go to next screen
          int nextPage = currentIndex + 1;
          pageController.animateToPage(nextPage,
              duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
        }
      },
      child: Container(
        width: 347.w,
        height: 55.h,
        decoration: BoxDecoration(
            color: primarycolor, borderRadius: BorderRadius.circular(20.r)),
        child: Center(
          child: Text(
            currentIndex == pages.length - 1 ? "Start" : "Next",
            style: GoogleFonts.roboto(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  // Dot indicator
  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pages.length, _getIndicator),
    );
  }

  // Page View Items
  List<Widget> _buildPageViewItems() {
    return pages
        .map((page) => Container(
              child: Column(
                children: [
                  Image.asset(
                    page.image,
                    width: 400.w,
                    height: 400.h,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    page.title,
                    style: GoogleFonts.aoboshiOne(fontSize: 30.sp),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    page.discription,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp, color: onboardDescription),
                  ),
                ],
              ),
            ))
        .toList();
  }

  Widget _getIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.sp),
      width: currentIndex == index ? 25.w : 10.w,
      height: currentIndex == index ? 10.h : 10.h,
      decoration: BoxDecoration(
          color: currentIndex == index ? primarycolor : indicatorlight,
          borderRadius: currentIndex == index
              ? BorderRadius.circular(10.r)
              : BorderRadius.circular(5.r)),
    );
  }
}
