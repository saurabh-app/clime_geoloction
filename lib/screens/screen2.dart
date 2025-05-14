import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
 
 @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
        }, child: Text("go back"),),
      ),
    );
  }
}