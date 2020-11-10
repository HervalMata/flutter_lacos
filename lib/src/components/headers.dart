import 'package:flutter/material.dart';

class Headers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Column(
          children: <Widget> [
            Text(
                'Laços Fofos da Cris',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
            )
          ],
        ),
        Icon(Icons.notifications),
      ],
    );
  }
}