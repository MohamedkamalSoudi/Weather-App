// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Alexandria',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              ),
          ),
        const Text(
          'Updated al 23:46',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 32,
        ), 
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/cloudy.png'),
            const Text(
            '17',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              ),
          ),
          const Column(
        children: [
          const Text(
          'Maxtemp: 24',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const Text(
          'Mintemp: 16',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
            ],
          ),
          ],
        ), 
        const SizedBox(
          height: 32,
        ),
        const Text(
            'Ligh Rain',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              ),
          ),
        ],
      ),
    );
  }
}