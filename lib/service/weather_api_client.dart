import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient{
  Future <Weather>? getCurrentWeather(String? location) async{
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=dcba2f9b5e3ed4a134bfd97291bfd90f&units=metric");
    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}