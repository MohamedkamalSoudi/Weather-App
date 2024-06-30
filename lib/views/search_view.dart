// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel weatherModel = await WeatherService(Dio())
                  .getCurrentWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              labelText: 'Search',
              suffixIcon: const Icon(Icons.search),
              hintText: 'Enter City Name',
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
