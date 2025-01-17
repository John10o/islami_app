import 'package:flutter/material.dart';
import 'package:islami/quran/quran_details_screen.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
