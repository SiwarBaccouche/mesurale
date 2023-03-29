import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesurale/features/home_features/views/adding_Chassis_view.dart';
import 'package:mesurale/features/home_features/views/home_page.dart';
import '../../../../core/utils/values/colors.dart';
import '../adding_compose_view.dart';
import '../adding_rideau_view.dart';
import '../adding_toiture_view.dart';
import 'productButton.dart';

class AddingProduct extends StatelessWidget {
  const AddingProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    return Container(
      height: size.height * 0.5,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          ),
          Center(
            child: Text(
              "Ajouter un élèment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ProductButton(
                    text: 'Châssis',
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddChassis(),
                      ),
                    ),
                  ),
                  Text("Châssis")
                ],
              ),
              Column(
                children: [
                  ProductButton(text: 'Composé',  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCompose(),
                    ),
                  ),),
                  Text("Composé")
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ProductButton(text: 'Toiture',  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddToiture(),
                    ),
                  ),),
                  Text("Toiture")
                ],
              ),
              Column(
                children: [
                  ProductButton(
                      text: 'Mur rideau',  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddRideau(),
                    ),
                  ),),
                  Text("Mur rideau")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
