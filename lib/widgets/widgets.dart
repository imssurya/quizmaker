import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return Center(
    child: RichText (
      text: TextSpan(
        style: TextStyle(fontSize: 22),
        children: <TextSpan>[
          TextSpan(text: 'Quiz', style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54)),
          TextSpan(text: 'Maker', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
        ],
      ),
    ),
  );
}
