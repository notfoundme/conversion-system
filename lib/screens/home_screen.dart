import 'package:conversion_system/screens/age_screen.dart';
import 'package:conversion_system/screens/date_screen.dart';
import 'package:conversion_system/screens/number_system_screen.dart';
import 'package:conversion_system/screens/temperature_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_home_container.dart';

class HomeScreen extends StatelessWidget {
  late IconData icon;
  late String text;
  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            // crossAxisSpacing: 10,
            // mainAxisSpacing: 15
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            if (index == 0) {
              icon = Icons.cake;
              text = 'Age';
            } else if (index == 1) {
              icon = Icons.thermostat;
              text = 'Temperature';
            } else if (index == 2) {
              icon = Icons.date_range;
              text = 'Date';
            } else if (index == 3) {
              icon = Icons.numbers;
              text = 'Alarm';
            }

            return GestureDetector(
              onTap: () {
                // Handle onTap events based on the index
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AgeScreen(),
                    ),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TemperatureScreen(),
                    ),
                  );
                } else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DateScreen(),
                    ),
                  );
                } else if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NumberSystemScreen(),
                    ),
                  );
                }
              },
              child: customContainer(
                icon: icon,
                text: text,
              ),
            );
          },
        ),
      ),
    );
  }
}
