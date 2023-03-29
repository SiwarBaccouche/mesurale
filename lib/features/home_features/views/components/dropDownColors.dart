/*import 'package:flutter/material.dart';

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
*/

import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';

class DropDownColorList extends StatefulWidget {
  const DropDownColorList({Key? key}) : super(key: key);

  @override
  State<DropDownColorList> createState() => _DropDownColorListState();
}

class _DropDownColorListState extends State<DropDownColorList> {
  String? selectval={
    'name': 'Aucun',
    'color': Colors.transparent,
  } as String;

  List<Map<String, dynamic>> colorList = [
    {
      'name': 'Aucun',
      'color': Colors.transparent,
    },
    {
      'name': 'Red',
      'color': Colors.red,
    },
    {
      'name': 'Green',
      'color': Colors.green,
    },
    {
      'name': 'Blue',
      'color': Colors.blue,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Column(children: [
          DecoratedBox(
              decoration: BoxDecoration(
                  color: themeColor,
                  //background color of dropdown button
                  border: Border.all(color: Colors.black38, width: 3),
                  //border of dropdown button
                  borderRadius: BorderRadius.circular(30),
                  //border raiuds of dropdown button
                  boxShadow: <BoxShadow>[
                    //apply shadow on Dropdown button
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.57),
                        //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]),
              child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButton(
                    value: selectval,
                    items: colorList.map((color) {
                      return DropdownMenuItem(
                        value: color['name'],
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              color: color['color'],
                            ),
                            Text(color['name'],
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectval = value as String?;
                      });
                    },
                    icon: Padding(
                        //Icon at tail, arrow bottom is default icon
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.arrow_circle_down_sharp)),
                    iconEnabledColor: Colors.white,
                    //Icon color
                    style: TextStyle(
                        //te
                        color: Colors.white, //Font color
                        fontSize: 20 //font size on dropdown button
                        ),

                    dropdownColor: themeColor,
                    //dropdown background color
                    underline: Container(),
                    //remove underline
                    isExpanded: true, //make true to make width 100%
                  ))),
          Divider(),
          DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.redAccent,
                    Colors.blueAccent,
                    Colors.purpleAccent
                    //add more colors
                  ]),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.57),
                        //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]),
              child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButton(
                    value: "menuone",
                    items: [
                      DropdownMenuItem(
                        child: Text("Menu One"),
                        value: "menuone",
                      )
                    ],
                    onChanged: (value) {},
                    isExpanded: true,
                    //make true to take width of parent widget
                    underline: Container(),
                    //empty line
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    dropdownColor: Colors.green,
                    iconEnabledColor: Colors.white, //Icon color
                  )))
        ]));
  }
}
