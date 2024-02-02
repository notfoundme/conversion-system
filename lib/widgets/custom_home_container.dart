
import 'package:flutter/material.dart';


class customContainer extends StatelessWidget {
  IconData icon;
  String text;
  customContainer({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // width: MediaQuery.of(context).size.width*0.4,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: <Color>[Color(0x0F88EEFF), Color(0x2F0099BB)],
              ),
              borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  text,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
