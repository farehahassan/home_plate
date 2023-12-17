import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/views/base/components/custom_appbar.dart';
import 'package:home_plate/views/user/notification/components/notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> _avatar = [
    "assets/images/home/person1.png",
    "assets/images/home/person2.png",
    "assets/images/home/person3.png",
    "assets/images/home/person4.png",
  ];
  List<String> _day = [
    "Today",
    "Today",
    "Today",
    "Today",
  ];
  List<String> _description = [
    "Dill sauce, bell peppers, skinless chicken breasts,",
    "Dill sauce, bell peppers, skinless chicken breasts,",
    "Dill sauce, bell peppers, skinless chicken breasts,",
    "Dill sauce, bell peppers, skinless chicken breasts,",
  ];
  List<String> _time = [
    "10:30 Pm",
    "09:30 Pm",
    "11:30 Pm",
    "10:30 Pm",
  ];
  List<String> _foodImage = [
    "assets/images/home/notifood1.png",
    "assets/images/home/notifood2.png",
    "assets/images/home/notifood3.png",
    "assets/images/home/notifood4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Notification",
        icon: Icons.delete_outlined,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 19.sp,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: _avatar.length,
                    itemBuilder: (context, index) {
                      return NotificationCard(
                          description: _description[index],
                          avatar: _avatar[index],
                          day: _day[index],
                          time: _time[index],
                          foodImage: _foodImage[index]);
                    }))
          ],
        ),
      ),
    );
  }
}
