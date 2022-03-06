import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    String bgimg = data['img'];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Weather"),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/$bgimg"),
              fit: BoxFit.cover
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Icon(
                       Icons.edit_location,
                       color: Colors.white
                   ),
                   Text(
                     data['location'],
                     style: TextStyle(
                       fontSize: 30,
                       letterSpacing: 2,
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                     ),
                   )
                 ],
                ),
                SizedBox(height: 20),
                Text(
                  data['temp'],
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Weather:",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      data['weather'],
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Description:",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      data['description'],
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Humidity:",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      data['humidity'],
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Windspeed:",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      data['windspeed'],
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
