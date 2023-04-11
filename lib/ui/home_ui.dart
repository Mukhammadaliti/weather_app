import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';

import 'package:weather_app/service/weather_api_client.dart';
import 'package:weather_app/wigets/additional_information.dart';
import 'package:weather_app/wigets/current_weather.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  WeatherApiClient client = WeatherApiClient();
  Weather? data;
  Future<void> getData() async {
    data = (await client.getCurrentWeather("Osh"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFf9f9f9),
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(Icons.nightlight_round, "${data!.temp}°",
                    "${data!.cityName}"),
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  "Дополнительная информация",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 20.0,
                ),
                additionInformation("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feels_like}"),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
