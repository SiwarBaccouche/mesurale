import 'package:flutter/material.dart';

import '../../../../main.dart';

class ColorItem {
  ColorItem(this.name, this.color);

  final String name;
  final Color color;
}

class DropDownColorList extends StatefulWidget {
  const DropDownColorList({Key? key}) : super(key: key);

  @override
  State<DropDownColorList> createState() => _DropDownColorListState();
}

class _DropDownColorListState extends State<DropDownColorList> {
  @override
  final List<ColorItem> items = [
    ColorItem("green", Colors.green),
    ColorItem("yellow", Colors.yellow),
    ColorItem("blue", Colors.blue),
  ];
  late ColorItem currentChoice;

  @override
  void initState() {
    currentChoice = items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: true,
      style: Theme.of(context).textTheme.headline6,
      value: currentChoice,
      items: items
          .map<DropdownMenuItem<ColorItem>>((ColorItem item) =>
              DropdownMenuItem<ColorItem>(
                value: item,
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(minHeight: 48.0),
                  color: item.color,
                  child: Text(
                    item.name,
                    style: TextStyle(
                      color: ThemeData.estimateBrightnessForColor(item.color) ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ))
          .toList(),
      onChanged: (ColorItem? value) => setState(() => currentChoice = value!),
    );
  }
}
