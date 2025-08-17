import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_iub/widgets/custom_background.dart';
import 'package:weather_app_iub/widgets/forecast_weather.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FutureForecast extends StatelessWidget {
  FutureForecast({super.key});

  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(mainChild: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 70,),
          Text(
          "North America",
            style: GoogleFonts.poppins(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "Max: 24° Min:18°",
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
          SizedBox(height: 40,),
            Text(
              "7-Days Forecasts",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.1, vertical: 1),
              width: MediaQuery.of(context).size.width,
              child: SizedBox(
                height: 172,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: _scrollLeft,
                      ),
                      Expanded(
                        child: ListView(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          children: const [
                            ForecastWeather(day: "Mon", image: "assets/images/day_rain.png", temp: "19°C",  selected: true),
                            ForecastWeather(day: "Tue", image: "assets/images/night_rain.png", temp: "18°C"),
                            ForecastWeather(day: "Wed", image: "assets/images/night_rain.png", temp: "18°C"),
                            ForecastWeather(day: "Thu", image: "assets/images/day_rain.png", temp: "19°C"),
                            ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                        onPressed: _scrollRight,
                      ),
                    ],
                  ),
                ),
            ),

            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(16),
              height: 175,
              width: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF3E2D8F), Color(0xFF9D52AC).withOpacity(0.7)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.crosshairs,
                          size: 24,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "AIR QUALITY",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "3-Low Health Risk",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 5,
                      width: 310,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF805BCA), Color(0xFF805BCA), Color(0xFF362A84)],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "See more",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),


            Column(
              //padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),

            children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 168,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF3E2D8F), Color(0xFF9D52AC).withOpacity(0.7)],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFF7CBFD)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 30,),
                              SizedBox(width: 15),
                              Text("SUNRISE", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400 )),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text("5:28 AM", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600)),
                          const SizedBox(height: 4),
                          const Text("Sunset: 7.25PM", style: TextStyle(color: Colors.white60, fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 168,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF3E2D8F), Color(0xFF9D52AC).withOpacity(0.7)],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFF7CBFD)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 30,),
                              SizedBox(width: 15),
                              Text("UV INDEX", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400 )),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text("4", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600)),
                          const SizedBox(height: 4),
                          const Text("Moderate", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            )

          ],

        ),
      ),
    );
  }
}

