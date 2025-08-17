import 'package:flutter/material.dart';
import 'package:weather_app_iub/future_forecast.dart';
import 'package:weather_app_iub/splash_screen.dart';
import 'package:weather_app_iub/todays_weather.dart';
import 'package:weather_app_iub/widgets/highest_weather.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: FutureForecast(),
    );
  }
}

