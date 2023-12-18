import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/cart/components/cart_meal_card.dart';
import 'package:home_plate/views/user/cart/components/total_code.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> _image = [
    "assets/images/home/notifood1.png",
    "assets/images/home/notifood2.png",
    "assets/images/home/notifood3.png",
    "assets/images/home/notifood4.png",
  ];
  List<String> _mainHead = [
    "Mixed Fried Meat",
    "Mixed Chicken",
    "Fried Meat",
    "Mixed Fried Meat",
  ];
  List<String> _subHead = [
    "With Spicy Chicken ",
    "With Spicy Sox ",
    "With French fries",
    "With Spicy Chicken ",
  ];
  List<String> _price = [
    "15.00",
    "18.00",
    "20.00",
    "15.00",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "My Cart",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 19.sp,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _mainHead.length,
                itemBuilder: (context, index) {
                  return CartMealCard(
                    image: _image[index],
                    mainHeading: _mainHead[index],
                    secondHeading: _subHead[index],
                    price: _price[index],
                  );
                },
              ),
            ),
            SingleChildScrollView(
              child: TotalCode(),
            ),
          ],
        ),
      ),
    );
  }
}
