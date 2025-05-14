import 'package:clima/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 @override
  void initState(){
    super.initState();
    print("initState called");
  }

void getLoction() async{
  await Geolocator.requestPermission();
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  print(position);
}

  @override
  Widget build(BuildContext context) {
      print("build called");
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // getLoction();
            Navigator.push(context, MaterialPageRoute(builder:(_) =>Screen2()));
        }, child: Text("Get Location")),
      ),
    );
  }
}