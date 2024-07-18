import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  double turn = 0.0;

  String buttonText = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/head_of_seb7a.png'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 75),
              child: AnimatedRotation(
                  child: Image.asset('assets/images/body_of_seb7a.png'),
                  turns: turn,
                  duration: Duration(milliseconds: 500))

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset('assets/images/body_of_seb7a.png'),
              //   ],
              // ),
              ),
        ],
      ),
      Center(child: Text('عدد التسبيحات')),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 410),
            padding: EdgeInsets.all(6),
            width: 100,
            height: 60,
            color: AppColors.primaryLightcolorOpisty,
            child: Center(
                child: Text(
              '$count',
              style: TextStyle(fontSize: 25),
            )),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.only(top: 500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  count++;
                  if (count % 33 == 0) {
                    if (buttonText == 'سبحان الله') {
                      buttonText = 'الحمدلله';
                    } else if (buttonText == 'الحمدلله') {
                      buttonText = 'الله اكبر';
                    } else {
                      buttonText = 'سبحان الله';
                    }
                  }
                  turn += 1 / 000030;

                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(170, 70),
                    backgroundColor: AppColors.primaryLightcolor),
                child: Text(
                  buttonText,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whitecolor),
                ))
          ],
        ),
      )
    ]);
  }
}
