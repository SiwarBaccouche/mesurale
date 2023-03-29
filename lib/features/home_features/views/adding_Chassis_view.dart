import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';
import 'package:mesurale/features/home_features/views/components/notes_textfield.dart';
import 'package:quantity_input/quantity_input.dart';
import 'components/dropDownColors.dart';
import 'components/radioButtonsDropDown.dart';

class AddChassis extends StatefulWidget {
  const AddChassis({Key? key}) : super(key: key);

  @override
  State<AddChassis> createState() => _AddChassisState();
}

class _AddChassisState extends State<AddChassis> {
  int simpleIntInput = 0;

  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>[
      '666+6+6TN',
      'ARME 6',
      'Bois20',
      'Bois 35',
      'BOIS35 S16',
      'C4',
      'C4+16+IP6',
      'C4+8+C4',
      'C6',
      'C6+10+C4',
      'C6+12+C6',
      'C6+12+PO6',
      'C6+12+SB6',
      'C6+12+TN6',
      'C6+6+C6',
      'C6+6+F44',
      'C6+6+SB6',
      'CT6+10+F4',
      'CT6+10+F4T',
      'CT6+12+CT6',
      'CT6+12+F55',
      'CT6+20+CT6',
      'CT6+6+CT6',
      'F10.',
      'F10. SAB',
      'F10. SIL',
      'F10.2 SB B',
      'F12+16+F12',
      'F12.',
      'F12. CL',
      'F12. SEC',
      'F12.1',
      'F16 GC',
      'F16 GCP',
      'F16.',
      'F16. GD',
      'F16. GD1',
      'F18',
      'F18 SS',
      'F20',
      'F20 GC',
      'F20 GCP',
      'F20 GD',
      'F6.2',
      'F6.2 SAB',
      'F6.2 SAB B',
      'F8+12+F8',
      'F8+16+F8',
      'F8+8+F8',
      'F8.1',
      'F8.2',
      'F8.2 SAB',
      'F8.2 SIL',
      'F8S+8+F8S',
      'MDF 10',
      'MDF 10 FB',
      'MDF 10 G',
      'MDF 10 N',
      'MDF 10 P',
      'MDF 18 G',
      'MDF 20',
      'MDF 6',
      'MDF 6 FB',
      'MDF 6 GR',
      'MDF 6 N',
      'MDF 8',
      'MDF 8 N',
      'MIR 6T',
      'PC4 G',
      'PO 6',
      'R 026 N',
      'R L 026 GR',
      'R L 45 FB',
      'R L PVC',
      'R LAME 26G',
      'R LAME VR',
      'R LAME026',
      'R LM GV',
      'R PC',
      'R PVC',
      'REMP PVC',
      'SABLE 6',
      'SABLE SEC6',
      'SABLE SEC8',
      'SBB6+6+F44',
      'SC+12+C6',
      'SC+6+C6',
      'SC+6+C6S',
      'SC6',
      'SC6+20+CT6',
      'SC6+8+F10',
      'SCT6',
      'SCT6 OP',
      'SDB+6+C6',
      'SDB6',
      'SEC 10',
      'SEC 10 SBB',
      'SEC 12',
      'SEC 6',
      'SEC 6 B20',
      'SEC 6 BB',
      'SEC 8.',
      'SEC10 SBBP',
      'SR+16+F8',
      'SRS+12+C6',
      'SRS+12+F8',
      'SRS+16+F8',
      'SRSOP',
      'SS6+12+SS6',
      'SSC+12+C6',
      'SSC+12+CT6',
      'SSC+12+SB6',
      'SSC+6+C6',
      'SSC+6+SB6',
      'SSC+8+C6',
      'SSC6',
      'SSCT B',
      'SSCT+12+F8',
      'ST6+12+F64',
      'ST6+12+ST6',
      'TN6+16+F8',
      'TN6+6+F8',
      'TN6+66+F8',
    ];
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;

    String dropdownValue = list.first;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: secondaryColor,
        body: Center(
          child: Container(
            height: size.height * 0.9,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Hauteur: "),
                      SizedBox(
                        width: size.width * 0.3,
                        child: TextFormField(
                          cursorColor: themeColor,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            floatingLabelStyle: TextStyle(color: themeColor),
                            focusColor: themeColor,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: themeColor,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            labelText: 'Hauteur',
                            hintText: 'Hauteur',
                          ),
                        ),
                      ),
                      Text("Largeur: "),
                      SizedBox(
                        width: size.width * 0.3,
                        child: TextFormField(
                          cursorColor: themeColor,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            floatingLabelStyle: TextStyle(color: themeColor),
                            focusColor: themeColor,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: themeColor,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            labelText: 'Largeur',
                            hintText: 'Largeur',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Quantité: "),
                        QuantityInput(
                          value: simpleIntInput,
                          onChanged: (value) => setState(
                            () => simpleIntInput = int.parse(
                              value.replaceAll(',', ''),
                            ),
                          ),
                          step: 1,
                        ),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Remplissage: "),
                        DropDownColorList(),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Contenu :"),
                        TwoRadioButtonsWithDropdown(),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Text("NOTE:"),
                  NotesTextField(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Enregistrer"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: themeColor,
                      animationDuration: Duration(milliseconds: 300),
                      padding: EdgeInsets.all(18.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
