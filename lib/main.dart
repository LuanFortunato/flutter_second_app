import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'AppTreino',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Treino'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                const Text('1 Feb 2019'),
                Row(
                  children: const [
                    Icon(Icons.sunny),
                    Text('Cloudy'),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: const [
                        Text('26°'),
                        Text('Indoor temp'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('26°'),
                        Text('Indoor temp'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('26°'),
                        Text('Indoor temp'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
