import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget {
  const InputFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
border: Border(
bottom: BorderSide(color: Colors.grey),
),
),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),

    ),
    ],
    );
  }
}
