import 'package:flutter/material.dart';

class CardMusicFooter extends StatelessWidget {
  const CardMusicFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.blue.shade400,
            Colors.blue.shade600,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 10,
            spreadRadius: 3,
            offset: const Offset(8, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.music_note,
            color: Colors.white,
            size: 35,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                'Everyday Life',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Coldplay',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(width: 105),
          Row(
            children: const [
              Icon(
                Icons.skip_previous,
                color: Colors.white60,
                size: 20,
              ),
              Icon(
                Icons.pause,
                color: Colors.white,
                size: 20,
              ),
              Icon(
                Icons.skip_next,
                color: Colors.white60,
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
