import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/vender/uploadfood/components/active_card.dart';

class CurrentOrder extends StatefulWidget {
  const CurrentOrder({super.key});

  @override
  State<CurrentOrder> createState() => _CurrentOrderState();
}

class _CurrentOrderState extends State<CurrentOrder> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: List.generate(
                4,
                (index) => ActiveCard(
                      ontap: () {
                        Navigator.pushNamed(
                            context, rider_accept_order_screen_route);
                      },
                    )),
          ),
        ],
      ),
    );
  }
}
