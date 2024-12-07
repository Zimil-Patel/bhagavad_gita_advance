import 'package:flutter/material.dart';

containerDeoration(Color color) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: color,
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 6),
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          spreadRadius: 1,
        )
      ],
      );
}
