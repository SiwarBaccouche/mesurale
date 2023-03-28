import 'package:flutter/material.dart';

import '../../../../core/utils/values/colors.dart';


class ProductButton extends StatelessWidget {
  const ProductButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;

    return Container(
        width: size.width * 0.2,
        height: size.width * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, onPressed());
          },
          child: Text(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
            surfaceTintColor: Colors.red,
            animationDuration: Duration(milliseconds: 300),
            padding: EdgeInsets.all(18.0),
          ),
        ));
  }
}
