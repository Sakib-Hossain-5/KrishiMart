import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/styles.dart';

Widget ourButton({
  required VoidCallback onPress,
  required Color color,
  required String title,
  required Color textColor,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress, // Corrected to call the function
    child: title.text.color(textColor).fontFamily(bold).make(),
  ); // ElevatedButton
}
