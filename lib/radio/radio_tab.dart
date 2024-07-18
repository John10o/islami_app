import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, bottom: 20),
          child: Image.asset('assets/images/radio_image.png'),
        ),
        Text('إذاعة القرآن الكريم'),
        SizedBox(
          height: 50,
        ),
        Image.asset('assets/images/Group 5.png'),
      ],
    );
  }
}
