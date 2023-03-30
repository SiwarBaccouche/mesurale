import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';

class DropDownRemplissageList extends StatefulWidget {
  const DropDownRemplissageList({Key? key}) : super(key: key);

  @override
  State<DropDownRemplissageList> createState() => _DropDownRemplissageListState();
}

class _DropDownRemplissageListState extends State<DropDownRemplissageList> {
  List<Map<String, dynamic>> colorList = [
    {
      'name': 'Aucun',
      'color': Colors.transparent,
    },
    {
      'name': '666+6+6TN',
      'color': Color(0xFF33CC66),
    },
    {
      'name': 'ARME 6',
      'color': Color(0xFF8282C7),
    },
    {
      'name': 'Bois20',
      'color': Color(0xFFB95C00),
    },
    {
      'name': 'Bois 35',
      'color': Color(0xFFB95C00),
    },
    {
      'name': 'BOIS35 S16',
      'color': Color(0xFFB95C00),
    },
    {
      'name': 'C4',
      'color': Color(0xFF9FFFFF),
    },
    {
      'name': 'C4+16+IP6',
      'color': Color(0xFF3399FF),
    },
    {
      'name': 'C4+8+C4',
      'color': Color(0xFF3399FF),
    },
    {
      'name': 'C6',
      'color': Color(0xFFD8F3FC),
    },
    {
      'name': 'C6+10+C4',
      'color': Color(0xFF33CCFF),
    },
    {
      'name': 'C6+12+C6',
      'color': Color(0xFF3399FF),
    },
    {
      'name': 'C6+12+PO6',
      'color': Color(0xFFB5DDEA),
    },
    {
      'name': 'C6+12+SB6',
      'color': Color(0xFF86BED1),
    },
    {
      'name': 'C6+12+TN6',
      'color': Color(0xFF3399FF),
    },
    {
      'name': 'C6+6+C6',
      'color': Color(0xFF33CCFF),
    },
    {
      'name': 'C6+6+F44',
      'color': Color(0xFF77B093),
    },
    {
      'name': 'C6+6+SB6',
      'color': Color(0xFF86BED1),
    },
    {
      'name': 'CT6+10+F44',
      'color': Color(0xFFA7E4C5),
    },
    {
      'name': 'CT6+10+F4T',
      'color': Color(0xFFA7E4C5),
    },
    {
      'name': 'CT6+12+CT6',
      'color': Color(0xFFD7F8E7),
    },
    {
      'name': 'CT6+12+F55',
      'color': Color(0xFFA7E4C5),
    },
    {
      'name': 'CT6+20+CT6',
      'color': Color(0xFFD7F8E7),
    },
    {
      'name': 'CT6+6+CT6',
      'color': Color(0xFFADE4C8),
    },
    {
      'name': 'F10.',
      'color': Color(0xFF6DB6B6),
    },
    {
      'name': 'F10. SAB',
      'color': Color(0xFF6DB6B6),    },
    {
      'name': 'F10. SIL',
      'color': Color(0xFF6DB6B6),
    },
    {
      'name': 'F10.2 SB B',
      'color': Color(0xFFB6C5C5),
    },
    {
      'name': 'F12+16+F12',
      'color': Color(0xFF48A777),
    },
    {
      'name': 'F12.',
      'color': Color(0xFF64D3D2),
    },
    {
      'name': 'F12. CL',
      'color': Color(0xFF7EC1E3),
    },
    {
      'name': 'F12. SEC',
      'color': Color(0xFF64D3D2),
    },
    {
      'name': 'F12.1',
      'color': Color(0xFF64D3D2),
    },
    {
      'name': 'F16 GC',
      'color': Color(0xFF53A600),
    },
    {
      'name': 'F16 GCP',
      'color': Color(0xFF53A600),
    },
    {
      'name': 'F16.',
      'color': Color(0xFF53A600),
    },
    {
      'name': 'F16. GD',
      'color': Color(0xFF53A600),
    },
    {
      'name': 'F16. GD1',
      'color': Color(0xFF53A600),
    },
    {
      'name': 'F18',
      'color': Color(0xFF64D3D2),
    },
    {
      'name': 'F18 SS',
      'color': Color(0xFFB0ABAB),
    },
    {
      'name': 'F20',
      'color': Color(0xFF82C0FF),
    },
    {
      'name': 'F20 GC',
      'color': Color(0xFF0099CC),
    },
    {
      'name': 'F20 GCP',
      'color': Color(0xFF0099CC),
    },
    {
      'name': 'F20 GD',
      'color': Color(0xFF8FBCEA),
    },
    {
      'name': 'F6.2',
      'color': Color(0xFFA7D6D5),
    },
    {
      'name': 'F6.2 SAB',
      'color': Color(0xFF84BFBE),
    },
    {
      'name': 'F6.2 SAB B',
      'color': Color(0xFFC6D9D9),
    },
    {
      'name': 'F8+12+F8',
      'color': Color(0xFFA7E4C5),
    },
    {
      'name': 'F8+16+F8',
      'color': Color(0xFF10EF7E),    },
    {
      'name': 'F8+8+F8',
      'color': Color(0xFFA7E4C5),    },
    {
      'name': 'F8.1',
      'color': Color(0xFF3E43EF),    },
    {
      'name': 'F8.2',
      'color': Color(0xFF6DB6B6),    },
    {
      'name': 'F8.2 SAB',
      'color': Color(0xFF84BFBE),    },
    {
      'name': 'F8.2 SIL',
      'color': Color(0xFF6DB6B6),    },
    {
      'name': 'F8S+8+F8S',
      'color': Color(0xFFA7E4C5),    },
    {
      'name': 'MDF 10',
      'color': Color(0xFFFFFFFF),    },
    {
      'name': 'MDF 10 FB',
      'color': Color(0xFFAD6542),    },
    {
      'name': 'MDF 10 G',
      'color': Color(0xFFCCCCCC),    },
    {
      'name': 'MDF 10 N',
      'color': Color(0xFF595656),    },
    {
      'name': 'MDF 10 P',
      'color': Color(0xFF999999),    },
    {
      'name': 'MDF 18 G',
      'color': Color(0xFFCCCCCC),    },
    {
      'name': 'MDF 20',
      'color': Color(0xFFFFFFFF),    },
    {
      'name': 'MDF 6',
      'color': Color(0xFFFFFFFF),    },
    {
      'name': 'MDF 6 FB',
      'color': Color(0xFFAD6542),    },
    {
      'name': 'MDF 6 GR',
      'color': Color(0xFFA8A7A7),    },
    {
      'name': 'MDF 6 N',
      'color': Color(0xFF333333),    },
    {
      'name': 'MDF 8',
      'color': Color(0xFFFFFFFF),    },
    {
      'name': 'MDF 8 N',
      'color': Color(0xFF595656),    },
    {
      'name': 'MIR 6T',
      'color': Color(0xFFB7F8F8),    },
    {
      'name': 'PC4 G',
      'color': Color(0xFF666666),    },
    {
      'name': 'PO 6',
      'color': Color(0xFFCADEE5),    },
    {
      'name': 'R 026 N',
      'color': Color(0xFF4D4A4A),    },
    {
      'name': 'R L 026 GR',
      'color': Color(0xFFC0C0C0),    },
    {
      'name': 'R L 45 FB',
      'color': Color(0xFF884707),    },
    {
      'name': 'R L PVC',
      'color': Color(0xFFFFFFFF),    },
    {
      'name': 'R LAME 26G',
      'color': Color(0xFFC0C0C0),    },
    {
      'name': 'R LAME VR',
      'color': Color(0xFFC0C0C0),     },
    {
      'name': 'R LAME026',
      'color': Color(0xFFC0C0C0),     },
    {
      'name': 'R LM GV',
      'color': Color(0xFF404040),     },
    {
      'name': 'R PC',
      'color': Color(0xFF766B6B),     },
    {
      'name': 'R PVC',
      'color': Color(0xFFFFFFFF),
    },
    {
      'name': 'REMP PVC',
      'color': Color(0xFFFFFFFF),     },
    {
      'name': 'SABLE 6',
      'color': Color(0xFFCADEE5),     },
    {
      'name': 'SABLE SEC6',
      'color': Color(0xFFCADEE5),     },
    {
      'name': 'SABLE SEC8',
      'color': Color(0xFFCADEE5),     },
    {
      'name': 'SBB6+6+F44',
      'color': Color(0xFF418C66),     },
    {
      'name': 'SC+12+C6',
      'color': Color(0xFF838383),     },
    {
      'name': 'SC+6+C6',
      'color': Color(0xFF838383),     },
    {
      'name': 'SC+6+C6S',
      'color': Color(0xFF838383),     },
    {
      'name': 'SC6',
      'color': Color(0xFF999999),     },
    {
      'name': 'SC6+20+CT6',
      'color': Color(0xFFCCCCCC),     },
    {
      'name': 'SC6+8+F10',
      'color': Color(0xFF999999),      },
    {
      'name': 'SCT6',
      'color': Color(0xFF999999),      },
    {
      'name': 'SCT6 OP',
      'color': Color(0xFF534E4E),      },
    {
      'name': 'SDB+6+C6',
      'color': Color(0xFF0066CC),      },
    {
      'name': 'SDB6',
      'color': Color(0xFF003399),     },
    {
      'name': 'SEC 10',
      'color': Color(0xFF6CFFB6),     },
    {
      'name': 'SEC 10 SBB',
      'color': Color(0xFF91D2B1),     },
    {
      'name': 'SEC 12',
      'color': Color(0xFF7DDAAB),     },
    {
      'name': 'SEC 6',
      'color': Color(0xFF00B3B3),      },
    {
      'name': 'SEC 6 B20',
      'color': Color(0xFFA7ECEB),      },
    {
      'name': 'SEC 6 BB',
      'color': Color(0xFFA7ECEB),      },
    {
      'name': 'SEC 8.',
      'color': Color(0xFF00D5D5),      },
    {
      'name': 'SEC10 SBBP',
      'color': Color(0xFF91D2B1),      },
    {
      'name': 'SR+16+F8',
      'color': Color(0xFF7993AE),      },
    {
      'name': 'SRS+12+C6',
      'color': Color(0xFFAAD2FB),      },
    {
      'name': 'SRS+12+F8',
      'color': Color(0xFFAAD2FB),      },
    {
      'name': 'SRS+16+F8',
      'color': Color(0xFF7993AE),      },
    {
      'name': 'SRSOP',
      'color': Color(0xFF293644),      },
    {
      'name': 'SS6+12+SS6',
      'color': Color(0xFF7E7D7D),      },
    {
      'name': 'SSC+12+C6',
      'color': Color(0xFF333333),      },
    {
      'name': 'SSC+12+CT6',
      'color': Color(0xFF736E6E),      },
    {
      'name': 'SSC+12+SB6',
      'color': Color(0xFF4793E8),      },
    {
      'name': 'SSC+6+C6',
      'color': Color(0xFF64FDFF),      },
    {
      'name': 'SSC+6+SB6',
      'color': Color(0xFF7E7979),      },
    {
      'name': 'SSC+8+C6',
      'color': Color(0xFF534848),      },
    {
      'name': 'SSC6',
      'color': Color(0xFF39C0FF),      },
    {
      'name': 'SSCT B',
      'color': Color(0xFF6FF5FA),      },
    {
      'name': 'SSCT+12+F8',
      'color': Color(0xFF999999),      },

    {
      'name': 'ST6+12+F64',
      'color': Color(0xFF6F6F6F),      },
    {
      'name': 'ST6+12+ST6',
      'color': Color(0xFFAEABAB),      },
    {
      'name': 'TN6+16+F8',  'color': Color(0xFF3399FF),
    },
    {
      'name': 'TN6+6+F8',
      'color': Color(0xFF8CB9E7),      },
    {
      'name': 'TN6+66+F8',
      'color': Color(0xFF8CB9E7),      },
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(color['name'],
                                style: TextStyle(color: Colors.white)),
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
