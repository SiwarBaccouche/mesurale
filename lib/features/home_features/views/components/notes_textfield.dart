import 'package:flutter/material.dart';

import '../../../../core/utils/values/colors.dart';

class NotesTextField extends StatefulWidget {
  const NotesTextField({Key? key}) : super(key: key);

  @override
  State<NotesTextField> createState() => _NotesTextFieldState();
}

class _NotesTextFieldState extends State<NotesTextField> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    return SizedBox(
      width: size.width * 0.8,
      child: TextField(
        cursorColor: themeColor,
        maxLength: 500,
        decoration: InputDecoration(
          hintText: 'Ecrivez vos notes',
          hintStyle: TextStyle(color: Colors.black54),
          //counterText: '', // Remove the default character count
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: themeColor),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        ),
        style: TextStyle(fontSize: 16, color: Colors.black),
        textInputAction: TextInputAction.newline,
        maxLines: null,
      ),
    );
  }
}
