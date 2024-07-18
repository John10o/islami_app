import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/quran/item_sura_details.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = 'Quran_screen_details';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryLightcolor,
                ),
              )
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.06,
                    vertical: MediaQuery.of(context).size.height * 0.05),
                decoration: BoxDecoration(
                    color: AppColors.whitecolor,
                    borderRadius: BorderRadius.circular(24)),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: AppColors.primaryLightcolor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemSuraDetails(
                      content: verses[index],
                      index: index,
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
      )
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;

  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
