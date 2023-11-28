import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                  text: 'bold',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              TextSpan(text: ' world!'),
            ],
          ),
        )
      ],
    );
  }
}
