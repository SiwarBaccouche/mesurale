/*
import 'package:flutter/material.dart';

class RadioButtonDropDown extends StatefulWidget {
@override
_RadioButtonDropDownState createState() => _RadioButtonDropDownState();
}

class _RadioButtonDropDownState extends State<RadioButtonDropDown> {
late String? selectedValue='Option 1';
List<String> values = ['Option 1', 'Option 2', 'Option 3'];

@override
Widget build(BuildContext context) {
return Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [


Column(
children: values.map((value) {
return Row(
  mainAxisAlignment: MainAxisAlignment.center,
children: [
Radio(
value: value,
groupValue: selectedValue,
onChanged: (value) {
setState(() {
selectedValue = value;
});
},
),
Text(value),
],
);
}).toList(),
),
if (selectedValue != null)
SizedBox(
height: 50,
child: DropdownButton<String>(
value: selectedValue,
onChanged: (value) {
setState(() {
selectedValue = value;
});
},
items: values.map<DropdownMenuItem<String>>((value) {
return DropdownMenuItem<String>(
value: value,
child: Text(value),
);
}).toList(),
),
),
],
);
}
}
*/

///////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';

class TwoRadioButtonsWithDropdown extends StatefulWidget {
  @override
  _TwoRadioButtonsWithDropdownState createState() =>
      _TwoRadioButtonsWithDropdownState();
}

class _TwoRadioButtonsWithDropdownState
    extends State<TwoRadioButtonsWithDropdown> {
  int? _radioValue = 0;
  List<String> _options1 = ['FR'];
  String? _selectedOption1 = 'FR';
  List<String> _options2 = ['avec couvre joint', 'sans couvre joint', 'avec réducteur'];
  String? _selectedOption2 = 'avec couvre joint';

  void _handleRadioValueChanged(int? value) {
    setState(() {
      _radioValue = value;
      if (_radioValue == 0) {
        _selectedOption2 = 'avec couvre joint';
      } else {
        _selectedOption1 = 'FR';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
              activeColor: themeColor,
              value: 0,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChanged,
            ),
            Text('Frappe'),
            Radio(
              activeColor: themeColor,
              value: 1,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChanged,
            ),
            Text('Menuiserie coulissante'),
          ],
        ),
        if (_radioValue == 0)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton<String>(
        iconDisabledColor: themeColor,
              iconEnabledColor: themeColor,
              value: _selectedOption1,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption1 = newValue;
                });
              },
              items: _options1.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
          ),
        if (_radioValue == 1)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton<String>(
              iconDisabledColor: themeColor,
              iconEnabledColor: themeColor,
              value: _selectedOption2,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption2 = newValue;
                });
              },
              items: _options2.map((String option) {
                return DropdownMenuItem<String>(

                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
