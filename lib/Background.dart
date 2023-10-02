
import 'package:flutter/material.dart';


class background extends StatelessWidget {
  const background({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/stars.png'),
            fit: BoxFit.fill)
          ),
        ),
       ),
    );
  }
}

