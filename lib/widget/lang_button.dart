 import 'package:flutter/material.dart';

Widget langButton(String label, bool selected) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: selected ? const Color(0xFF1D6D4D) : Colors.white,
        foregroundColor: selected ? Colors.white : Colors.black,
        side: BorderSide(
          color: selected ? const Color(0xFF1D6D4D) : Colors.grey.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      ),
      onPressed: () {},
      child: Text(label),
    );
  }