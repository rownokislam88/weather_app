import 'package:flutter/material.dart';

class ForecastWeather extends StatelessWidget {
  final String day;
  final String image;
  final String temp;
  final bool selected;

  const ForecastWeather({
    super.key,
    required this.day,
    required this.image,
    required this.temp,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 82,
      height: 172,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        gradient: selected? const LinearGradient(
          colors: [
            Color(0xFF3E2D8F),
           // Color(0xFF533595),
            Color(0xFF9D52AC),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
            : const LinearGradient(
          colors: [
            Color(0xFF3E2D8F),
            Color(0xFF8E78C8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            temp,
            style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Image.asset(
            image,
            height: 68,
            width: 68,
          ),
          Text(
            day,
            style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}