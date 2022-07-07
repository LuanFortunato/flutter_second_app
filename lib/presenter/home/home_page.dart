import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../next_page/languages_page.dart';
import 'widgets/body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Row(
          children: const [
            Icon(
              Icons.align_horizontal_right_sharp,
            ),
            Text(
              'Housing',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const LanguagesPage();
                  },
                ),
              );
            },
            icon: const Icon(
              CupertinoIcons.gear_solid,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: const BodyHome(),
    );
  }
}
