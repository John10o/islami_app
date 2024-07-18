import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/hadeth/hadeth_tab.dart';
import 'package:islami/hadeth/item_hadeth_details.dart';
import 'package:islami/quran/item_sura_details.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_screen_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        'assets/images/background.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06,
              vertical: MediaQuery.of(context).size.height * 0.05),
          decoration: BoxDecoration(
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.circular(24)),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}
