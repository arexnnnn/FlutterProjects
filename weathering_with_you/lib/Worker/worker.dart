import 'dart:convert';
import 'package:http/http.dart';

class worker{

  late String location;
  worker({required this.location}){   // Named parameter
    location = this.location;
  }


  late String temperature;
  late String humidity;
  late String airSpeed;
  late String description;
  late String main;

  get http => null;

  Future<void> getData() async {
    try {
      Response response = await http.get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=aa05fe44c07f1a4adaf8cfd1569f0926'));
      Map data = jsonDecode(response.body);

      // Getting temperature and humidity
      Map temp_data = data['main'];
      String getHumidity = temp_data['humidity'].toString();
      double getTemperature = temp_data['temperature'] - 273.15;

      // Getting air speed
      Map wind = data['wind'];
      double getAirSpeed = wind['airSpeed']/0.27777777777778;

      // Getting Descripton
      List weather_data = data['weather'];
      Map weather_main_data = weather_data[0];
      String getMain_des = weather_main_data['main_des'];
      String getDes = weather_main_data["description"];

      // Assigning values
      temperature = getTemperature.toString();
      humidity = getHumidity;
      airSpeed = getAirSpeed.toString();
      description = getDes.toString();
      main = getMain_des.toString();
    }

    catch (e) {
      temperature = "Can't find data";
      humidity = "Can't find data";
      airSpeed = "Can't find data";
      description = "Can't find data";
      main = "Can't find data";
    }
  }
}