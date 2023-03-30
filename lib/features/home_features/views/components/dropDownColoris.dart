import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';

class DropDownColorisList extends StatefulWidget {
  const DropDownColorisList({Key? key}) : super(key: key);

  @override
  State<DropDownColorisList> createState() => _DropDownColorisListState();
}

class _DropDownColorisListState extends State<DropDownColorisList> {
  List<Map<String, dynamic>> colorList = [
    {
      'name': 'Aucun',
      'color': Colors.transparent,
    },
    {
      'name': 'BRUT',
      'color': Color(0xFFE0E0E0),
    },
    {
      'name': 'Laqué Blanc RAL 9010',
      'color': Color(0xFFFFFFFF),
    },
    {
      'name': 'Anodisé Bronze',
      'color': Color(0xFF808040),
    },
    {
      'name': 'Laqué FAUX BOIS',
      'color': Color(0xFFAB4A1A),
    },
    {
      'name': 'Laqué GRIS GIVREE',
      'color': Color(0xFFB0B0B0),
    },
    {
      'name': 'Laqué GRIS TPR RAL 9007',
      'color': Color(0xFFB0B0B0),
    },
    {
      'name': 'Laqué Noir RAL 9005',
      'color': Color(0xFF000000),
    },
    {
      'name': 'Laqué Gris Anthracite RAL 7016',
      'color': Color(0xFF414141),
    },
    {
      'name': 'Laqué Tête de Nègre RAL 8019',
      'color': Color(0xFF542D07),
    },
    {
      'name': 'Anodisé Naturel 15 microns',
      'color': Color(0xFF3399FF),
    },
  ];

  String? selectval;

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
                  padding: EdgeInsets.only(left:20, right: 20),
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(color['name'],
                                style: TextStyle(color: Colors.white,fontSize: 15)),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectval = value as String;
                      });
                    },
                    icon: Padding(
                        //Icon at tail, arrow bottom is default icon
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(Icons.arrow_circle_down_sharp)),
                    iconEnabledColor: Colors.white,
                    //Icon color
                    style: TextStyle(
                        //te
                        color: Colors.white, //Font color
                        fontSize: 15 //font size on dropdown button
                        ),

                    dropdownColor: themeColor,
                    //dropdown background color
                    underline: Container(),
                    //remove underline
                    isExpanded: true, //make true to make width 100%
                  ))),
        ]));
  }
}
