// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
    TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);
Widget additionInformation(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ветер",
              style: titleFont,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Давление",
              style: titleFont,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$wind",
              style: infoFont,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "$pressure",
              style: infoFont,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Влажность",
              style: titleFont,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Ощущения",
              style: titleFont,
            ),
          ],  
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$humidity",
              style: infoFont,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "$feels_like",
              style: infoFont,
            ),
          ],
        ),
      ],
    ),
  );
}
