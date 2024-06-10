import 'package:flutter/material.dart';



Widget _TextInputComponent(String label, String hinttext) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(color: Colors.black),
      ),
      SizedBox(height: 15),
      TextField(
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.grey[800],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
