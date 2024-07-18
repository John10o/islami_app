import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/hadeth/hadeth_tab.dart';
import 'package:islami/quran/quran_tab.dart';
import 'package:islami/radio/radio_tab.dart';
import 'package:islami/sebha/sebha_tab.dart';

class Homescreen extends StatefulWidget {
  static const String islamy = 'homescreen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/quran.png')),
                      label: 'Quran'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(
                          'assets/images/quran-quran-svgrepo-com.png')),
                      label: 'Hadeth'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                      label: 'Sebha'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/radio.png')),
                      label: 'Radio'),
                ]),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
}

