import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';
import 'package:mesurale/features/home_features/views/components/notes_textfield.dart';
import 'package:quantity_input/quantity_input.dart';
import 'components/dropDownColoris.dart';
import 'components/dropDownRemplissage.dart';
import 'components/ouverture_radio_button.dart';
import 'components/radioButtonsDropDown.dart';

class AddChassis extends StatefulWidget {
  const AddChassis({Key? key}) : super(key: key);

  @override
  State<AddChassis> createState() => _AddChassisState();
}

class _AddChassisState extends State<AddChassis> {
  int simpleIntInput = 1;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;

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
                 mainAxisAlignment: MainAxisAlignment.start,
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
                      ),]),
                  Padding(padding: EdgeInsets.all(10)),

                  Row(children:[ Text("Largeur: "),
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
                  Row(children: [Text("Epaisseur: "),
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
                          labelText: 'Epaisseur',
                          hintText: 'Epaisseur',
                        ),
                      ),
                    ),],),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text("Quantité: "),
                    SizedBox(
                      width: 30,
                    ),
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Coloris: "),
                        SizedBox(
                            width: size.width * 0.7,
                            child: DropDownColorisList()),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Remplissage: "),
                        SizedBox(
                            width: size.width * 0.65,
                            child: DropDownRemplissageList()),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(

                      children: [
                        Text("Châssis défini :"),
                        TwoRadioButtonsWithDropdown(),
                      ]),
                  Row(

                      children: [
                        Text("Ouverture :"),
                        OuvertureRadioButtons(),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "NOTE:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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
