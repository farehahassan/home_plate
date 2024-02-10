import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/vender/uploadfood/components/recipe_picture.dart';
import 'package:home_plate/views/vender/uploadfood/components/text_area.dart';

class UploadFoodScreen extends StatefulWidget {
  const UploadFoodScreen({super.key});

  @override
  State<UploadFoodScreen> createState() => _UploadFoodScreenState();
}

class _UploadFoodScreenState extends State<UploadFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Create New Recipe",
      ),
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 10.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RecipePicture(),
              SizedBox(
                height: 15.h,
              ),
              TextAreaField(
                fieldName: "First Name",
              ),
              SizedBox(
                height: 10.sp,
              ),
              TextAreaField(
                fieldName: "Description",
                // maxlength: 500,
                maxlines: 3,
              ),
              SizedBox(
                height: 10.sp,
              ),
              TextAreaField(
                fieldName: "Location",
                icon: Icon(
                  Icons.location_on_sharp,
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextAreaField(
                    width: 160.w,
                    fieldName: "Price",
                  ),
                  TextAreaField(
                    width: 160.w,
                    fieldName: "Dish Types",
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              OrangeButton(text: "Submit Recipe", ontap: () {}),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
