import 'package:flutter/material.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(title: "Profile"),
    );
  }
}
