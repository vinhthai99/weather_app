import 'package:http/http.dart' as http;
import 'dart:convert';

class Weather {
  double? lat;
  double? lon;
  String? location;
  String? temp;
  String? description;
  String? weather;
  String? windspeed;
  String? humidity;

  String? img;

  Weather({required this.lat, required this.lon, required this.location, required this.img});
  Future getData() async {

    try {
      var url = Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=a045f74eac0008af7dc9753b018ecec0");
      var response = await http.get(url);
      Map data = jsonDecode(response.body);
      double temp1 = data['main']['temp'];
      double temp2 = temp1 - 273;
      temp = temp2.round().toString();
      temp = (temp! + "\u2103");
      description = data['weather'][0]['description'];
      weather = data['weather'][0]['main'];
      int humidity1 = data['main']['humidity'];
      humidity = humidity1.toString();
      double windspeed1 = data['wind']['speed'];
      windspeed = windspeed1.toString();
    }
    catch (e) {
        print("Caught error: $e");
    }
    }
  }

