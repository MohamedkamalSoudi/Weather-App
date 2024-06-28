import 'package:flutter/material.dart';

class NoweatherBody extends StatelessWidget {
  const NoweatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children:[
          Text(
            'There is no weather 😞 start',
            style: TextStyle(fontSize: 25,
            ),
          ),
          Text(
            'Searching now 🔎',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
      ),
    );
  }
}
