import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/common_functions.dart';
import 'package:mesurale/core/utils/values/colors.dart';
import 'package:mesurale/features/home_features/views/components/AddingProductContainer.dart';
import 'package:mesurale/features/home_features/views/components/clientForm.dart';

import 'components/productButton.dart';

class AddClient extends StatefulWidget {
  const AddClient({Key? key}) : super(key: key);

  @override
  State<AddClient> createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> {
  @override
  Widget build(BuildContext context) {

    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:false,
        backgroundColor: secondaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ClientForm(),
                  Padding(padding: EdgeInsets.all(10)),
                  AddingProduct(),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    height: size.height * 0.48,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Center(
                          child: Text(
                            "Commande:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        SingleChildScrollView(
                          child: Column(children: [Text("data"), Text("data")]),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(width: size.width*0.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Enregistrer"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: themeColor,
                        animationDuration: Duration(milliseconds: 300),
                        padding: EdgeInsets.all(18.0),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
