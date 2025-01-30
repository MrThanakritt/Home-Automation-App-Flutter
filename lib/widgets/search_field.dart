import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black54,
            size: 26,
          ),
          suffixIcon: Icon(
            Icons.mic,
            color: Colors.black45,
            size: 26,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: "Seacrh your Devices",
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.black26,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          isDense: true),
    );
  }
}
