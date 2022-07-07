import 'package:flutter/material.dart';
import 'package:flutter_second_app/core/app_assets.dart';

import 'card_select_language.dart';
import 'title_languages_page.dart';

class BodyLanguagesPage extends StatelessWidget {
  const BodyLanguagesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleLanguagesPage(),
        Expanded(
          flex: 4,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                children: const [
                  CardSelectLanguage(language: 'English', img: usaFlag),
                  SizedBox(height: 10),
                  CardSelectLanguage(language: 'Portuguese', img: brazilFlag),
                  SizedBox(height: 10),
                  CardSelectLanguage(language: 'Japanese', img: japanFlag),
                  SizedBox(height: 10),
                  CardSelectLanguage(language: 'Chinese', img: chinaFlag),
                  SizedBox(height: 10),
                  CardSelectLanguage(language: 'Italic', img: italyFlag),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
