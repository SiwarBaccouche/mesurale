import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';
enum RadioButtonValue { gauche, droite }

class OuvertureRadioButtons extends StatefulWidget {
  @override
  _OuvertureRadioButtonsState createState() => _OuvertureRadioButtonsState();
}

class _OuvertureRadioButtonsState extends State<OuvertureRadioButtons> {
  RadioButtonValue? _radioButtonValue = RadioButtonValue.gauche;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: themeColor,
          value: RadioButtonValue.gauche,
          groupValue: _radioButtonValue,
          onChanged: (RadioButtonValue? value) {
            setState(() {
              _radioButtonValue= value;
            });
          },
        ),
        const Text('Gauche'),
        Radio(
          activeColor: themeColor,

          value: RadioButtonValue.droite,
          groupValue: _radioButtonValue
          ,
          onChanged: (RadioButtonValue? value) {
            setState(() {
              _radioButtonValue = value;
            });
          },
        ),
        const Text('Droite'),
      ],
    );
  }
}
