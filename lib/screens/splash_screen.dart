import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sports_101/screens/countryscreen.dart';

import 'onbourdingscreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart';
class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  void initState(){

    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => CountryScreen(),),);
    });
    super.initState();
  }

  Color color =  Colors.black;
  double height = 200;
  double width = 200 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              color= Colors.white ;
              height = 300;
              width = 150;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 3),
            color: color,
            width: width,
            height: height,
            child: CircleAvatar(
                child: SvgPicture.asset("assets/images/sports-logo.png" ,),
              radius: 100,
             // backgroundColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
