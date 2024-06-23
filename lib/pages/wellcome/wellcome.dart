// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/pages/home.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({super.key});

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Wellcome"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 34.0),
          width: 375.0,
          child: Stack(
            children: [
              PageView(
                children: [
                  _page(
                    1,
                    context,
                    "Next",
                    "First Page",
                    "Once oppene a time thare is the king of the world The Mohit Singh",
                    "assets/images/nbpo.png",
                  ),
                  _page(
                    2,
                    context,
                    "Next",
                    "First Page",
                    "Once oppene a time thare is the king of the world The Mohit Singh",
                    "assets/images/nbpo.png",
                  ),
                  _page(
                    3,
                    context,
                    "Get Start",
                    "First Page",
                    "Once oppene a time thare is the king of the world The Mohit Singh",
                    "assets/images/nbdo.png",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String subtitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.0,
          height: 345.0,
          child: Column(
            children: [Image.asset(imagePath)],
          ),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          width: 375.0,
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        GestureDetector(
        onTap: () {
          if(index<3){
            //navigation barbad
          }
          else{
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          }
        },
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            width: 325.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Center(
                child: Text(
              buttonName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal),
            ),
            ),
          ),
        ),
      ],
    );
  }
}
