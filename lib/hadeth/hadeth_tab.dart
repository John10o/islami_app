import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/hadeth/item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image.asset('assets/images/ahadeth_image.png')),
        Divider(
          color: AppColors.primaryLightcolor,
          thickness: 3,
        ),
        Text(
          'اسم الحديث',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: AppColors.primaryLightcolor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child: ahadethList.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightcolor,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: AppColors.primaryLightcolor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethName(
                      hadeth: ahadethList[index],
                    );
                  },
                  itemCount: ahadethList.length,
                ),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String Hadethcontent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> HadethList = Hadethcontent.split('#\r\n');
    for (int i = 0; i < HadethList.length; i++) {
      print(HadethList[i]);
      List<String> HadethLines = HadethList[i].split('\n');
      String title = HadethLines[0];
      HadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: HadethLines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;

  List<String> content;

  Hadeth({required this.title, required this.content});
}
