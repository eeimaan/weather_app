

import 'package:apiflutter/src/constants/app_colors.dart';
import 'package:apiflutter/src/features/weather_page/current_weather.dart';
import 'package:apiflutter/src/features/weather_page/hourly_weather.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key, required this.city}) : super(key: key);
  final String city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.rainGradient,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              CurrentWeather(city: city),
              const Spacer(),
              HourlyWeather(city: city),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
