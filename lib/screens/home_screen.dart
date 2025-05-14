import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

void getLoction() async{
  await Geolocator.requestPermission();
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  print(position);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            getLoction();
        }, child: Text("Get Location")),
      ),
    );
  }
}