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

class TwoRadioButtonsWithDropdown extends StatefulWidget {
  @override
  _TwoRadioButtonsWithDropdownState createState() =>
      _TwoRadioButtonsWithDropdownState();
}

class _TwoRadioButtonsWithDropdownState
    extends State<TwoRadioButtonsWithDropdown> {
  int? _radioValue = 0;
  List<String> _options1 = ['Option 1-1', 'Option 1-2', 'Option 1-3'];
  String? _selectedOption1='Option 1-1';
  List<String> _options2 = ['Option 2-1', 'Option 2-2', 'Option 2-3'];
  String? _selectedOption2='Option 2-1';

  void _handleRadioValueChanged(int? value) {
    setState(() {
      _radioValue = value;
      if (_radioValue == 0) {
        _selectedOption2 = 'Option 1';
      } else {
        _selectedOption1 = 'Option 2';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Select an option:'),
          ),
          Row(
            children: [
              Radio(
                value: 0,
                groupValue: _radioValue,
                onChanged: _handleRadioValueChanged,
              ),
              Text('Option 1'),
              Radio(
                value: 1,
                groupValue: _radioValue,
                onChanged: _handleRadioValueChanged,
              ),
              Text('Option 2'),
            ],
          ),
          if (_radioValue == 0)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButton<String>(
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
      ),
    );
  }
}
