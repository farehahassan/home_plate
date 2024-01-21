import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/user/auth/components/custom_text_field.dart';
import 'package:home_plate/views/user/profile/components/image_container.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final List<String> _fieldText = [
    "First Name",
    "Last Name",
    "Email",
    "Date of Birth",
    "Phone Number",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "Profile",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              const ImageContainer(),
              SizedBox(
                height: 40.h,
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => CustomTextField(
                    hinttext: _fieldText[index],
                    margin: EdgeInsets.only(
                      bottom: 12.sp,
                    ),
                  ),
                ),
              ),
              // CustomTextField(hinttext: "Gender"),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.sp,
                  ),
                  border: Border.all(
                    color: borderOutlineColor,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.sp),
                  child: DropdownSearch<String>(
                    popupProps: const PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    items: const ["Gender", "Female", "Male"],

                    dropdownDecoratorProps: DropDownDecoratorProps(
                      baseStyle: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: borderOutlineColor,
                      ),
                      dropdownSearchDecoration: const InputDecoration(),
                    ),
                    // onChanged: print,
                    selectedItem: "Gender",
                  ),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              OrangeButton(text: "Continue", ontap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
