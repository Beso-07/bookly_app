import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: Styles.textStyle18,
        prefixIcon: Opacity(
          opacity: .8,
          child: const Icon(Icons.search, color: Colors.white),
        ),
        enabledBorder: textFieldBorder(),
        focusedBorder: textFieldBorder(),
        border: textFieldBorder(),
      ),
    );
  }

  OutlineInputBorder textFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white, width: 1),
    );
  }
}
