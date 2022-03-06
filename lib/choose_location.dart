import 'package:flutter/material.dart';
import 'package:weather_app/weather.dart';




class Location extends StatefulWidget {

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List locations = [
    Weather(lat: 21.0294498, lon: 105.8544441, location: "Hanoi", img: "hanoi.jpg"),
    Weather(lat: 51.5073219, lon: -0.1276474, location: "London", img: "london.jpg"),
    Weather(lat: 38.8950368, lon: -77.0365427, location: "Washington D.C.", img: "washington.jpg"),
    Weather(lat: 55.7504461, lon: 37.6174943, location: "Moscow", img: "moscow.jpg"),
  ];

    void ChooseLocation(index) async{
      Weather instance = locations[index];
      await instance.getData();
      Navigator.pushNamed(context, "/home", arguments: {
        'location': instance.location,
        'weather': instance.weather,
        'description': instance.description,
        'temp': instance.temp,
        'windspeed': instance.windspeed,
        'humidity': instance.humidity,
        'img': instance.img
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  ChooseLocation(index);
                  //print(locations[index].temp);
                },
                title: Text(locations[index].location),
              ),
            );
        },
      ),
    );
  }
}
