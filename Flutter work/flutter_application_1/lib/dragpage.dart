import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/essentials.dart';
import 'package:flutter_application_1/Pages/food.dart';
import 'package:flutter_application_1/Pages/hostels.dart';
import 'package:flutter_application_1/Pages/rentals.dart';
import 'customButton.dart';

class DragPage extends StatefulWidget {
  const DragPage(ScrollController scrollController, {super.key});

  @override
  State<DragPage> createState() => _DragPageState();
}

class _DragPageState extends State<DragPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(padding: EdgeInsets.only(top: 80), child: buttonRow()),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            width: 100.0,
            height: 4.0,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
        ),
      ],
    );
  }

  buttonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
          text: 'Hostels',
          image: 'assets/Home Page.png',
          buttonColor: Colors.transparent,
          borderColor: const Color(0xFF008007),
          newColor: const Color(0xFF008007),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => hostels()),
            );
          },
        ),
        CustomButton(
          text: 'Rentals',
          image: 'assets/City Buildings.png',
          buttonColor: Colors.transparent,
          borderColor: const Color(0xFFFFBAC3),
          newColor: const Color(0xFFFFBAC3),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => rentals()),
            );
          },
        ),
        CustomButton(
          text: 'Food',
          image: 'assets/Medical Doctor.png',
          buttonColor: Colors.transparent,
          borderColor: const Color(0xFFD20303),
          newColor: Color.fromARGB(255, 202, 60, 60),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => food()),
            );
          },
        ),
        CustomButton(
          text: 'Essentials',
          image: 'assets/Training.png',
          buttonColor: Colors.transparent,
          borderColor: const Color(0xFF6DCAFF),
          newColor: const Color(0xFF6DCAFF),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => essentials()),
            );
          },
        )
      ],
    );
  }
}
