import 'package:flutter/material.dart';

class CardItensHome extends StatelessWidget {
  const CardItensHome({
    Key? key,
    bool? opened,
    Icon? icon,
    String? text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      margin: const EdgeInsets.all(8),
      width: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blueAccent.shade200,
            Colors.blueAccent.shade700,
          ],
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              spreadRadius: 3,
              color: Colors.grey.shade300,
              offset: const Offset(4, 6)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.light,
                size: 35,
                color: Colors.white,
              ),
              Icon(
                Icons.circle,
                size: 10,
                color: Colors.red,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(20)),
          Column(
            children: [
              const Text(
                'Lamp',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'OPENED',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
