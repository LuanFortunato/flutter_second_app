import 'package:flutter/material.dart';
import 'card_itens_home.dart';
import 'card_music_footer.dart';
import 'card_weather_home.dart';
import 'list_text_horizontal.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const CardWeatherHome(),
          const SizedBox(height: 40),
          const ListTextHorizontal(),
          Wrap(
            children: const [
              CardItensHome(text: 'Lamp', icon: Icons.light),
              CardItensHome(text: 'Router', icon: Icons.router),
              CardItensHome(text: 'Air', icon: Icons.air),
              CardItensHome(text: 'Fridge', icon: Icons.kitchen),
              //     Container(
              //       padding: const EdgeInsets.symmetric(
              //         horizontal: 20,
              //         vertical: 30,
              //       ),
              //       margin: const EdgeInsets.only(top: 15),
              //       width: 160,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(25),
              //         boxShadow: [
              //           BoxShadow(
              //               blurRadius: 10,
              //               spreadRadius: 3,
              //               color: Colors.grey.shade300,
              //               offset: const Offset(4, 6)),
              //         ],
              //       ),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Icon(
              //                 Icons.router,
              //                 size: 35,
              //                 color: Colors.blueAccent.shade700,
              //               ),
              //               const Icon(
              //                 Icons.circle,
              //                 size: 10,
              //                 color: Colors.red,
              //               ),
              //             ],
              //           ),
              //           const Padding(padding: EdgeInsets.all(20)),
              //           Column(
              //             children: [
              //               const Text(
              //                 'Router',
              //                 style: TextStyle(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //               const SizedBox(height: 10),
              //               Text(
              //                 'CLOSED',
              //                 style: TextStyle(
              //                   fontSize: 12,
              //                   color: Colors.grey.shade400,
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
            ],
          ),
          const CardMusicFooter(),
        ],
      ),
    );
  }
}
