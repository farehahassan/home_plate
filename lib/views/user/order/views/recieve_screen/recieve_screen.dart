import 'package:flutter/material.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/empty_screen_widget.dart';

class RecieveScreen extends StatefulWidget {
  const RecieveScreen({super.key});

  @override
  State<RecieveScreen> createState() => _RecieveScreenState();
}

class _RecieveScreenState extends State<RecieveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: const Center(
        child: EmptyScreen(
          vector: "assets/images/home/recieve.png",
          mainText: "Add Items To start a Received",
          subText:
              "Once you add items from a restaurant or store,your cart will appear here.",
        ),
      ),
    );
  }
}
