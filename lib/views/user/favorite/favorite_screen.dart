import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/food.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> _foodName = [
      'Penne Pasta',
      "Fried Chicken",
      "Chicken Skewers",
      "Maxican Tacos",
    ];
    List<String> _distance = [
      "3.5",
      "2.9",
      "4.2",
      "1.8",
    ];
    List<String> _rating = [
      "4.9",
      "3.8",
      "5.0",
      "2.7",
    ];
    List<String> _ratingCount = [
      "3.5",
      "2.3",
      "1.9",
      "7.8",
    ];
    List<String> _price = [
      "10.00",
      "12.00",
      "80.90",
      "23.00",
    ];
    List<String> _delivery = [
      "20.00",
      "10.00",
      "19.00",
      "9.00",
    ];
    List<String> _country = [
      "Pakistan",
      "India",
      "Brazilian",
      "Arabic",
    ];
    List<String> _image = [
      "assets/images/home/pakistan.png",
      "assets/images/home/indian.png",
      "assets/images/home/brazilian.png",
      "assets/images/home/arabic.png",
    ];
    return Scaffold(
      appBar: CustomAppBar(
        title: "My Favorites",
        secondicon: Icons.search,
      ),
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.sp,
          vertical: 10.sp,
        ),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceBetween,
          children: List.generate(
            _foodName.length,
            (index) => Food(
              foodName: _foodName[index],
              distance: _distance[index],
              rating: _rating[index],
              ratingCount: _ratingCount[index],
              price: _price[index],
              deliveryFee: _delivery[index],
              foodImage: _image[index],
            ),
          ),
        ),
      ),
    );
  }
}
