import 'package:flutter/material.dart';

class AgeScreen extends StatefulWidget {
  final String label;
  AgeScreen({super.key, required this.label});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  TextEditingController controller = TextEditingController();
  int convertedAge = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label),
      ),
      body: Column(
        children: [
          ageInputBox(),

          GestureDetector(
            onTap: () {
              String x = controller.text;
              int year = int.parse(x.substring(0, 4));
              DateTime now = DateTime.now();
              int currentYear = now.year;
              convertedAge = currentYear - year;
              setState(() {});
              controller.clear();
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.deepPurple),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Calculate Your Age",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          convertedAge == -1
              ? Container()
              : SizedBox(
                  height: 70,
                  child: Text(
                    "You are $convertedAge years old",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

          // Text("Your birthday is in 254 days"),
        ],
      ),
    );
  }

  Padding ageInputBox() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          label: Text("Enter your Date of Birth in A.D"),
        ),
      ),
    );
  }
}
