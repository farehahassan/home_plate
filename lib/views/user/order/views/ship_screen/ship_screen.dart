import 'package:flutter/material.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/empty_screen_widget.dart';

class ShipScreen extends StatefulWidget {
  const ShipScreen({super.key});

  @override
  State<ShipScreen> createState() => _ShipScreenState();
}

class _ShipScreenState extends State<ShipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: const Center(
        child: EmptyScreen(
          vector: "assets/images/home/ship.png",
          mainText: "Add Items to start a Order",
          subText:
              "Once you add items from a restaurant or store,your cart will appear here.",
        ),
      ),
    );
  }
}
