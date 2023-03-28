import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/values/colors.dart';

class ClientForm extends StatefulWidget {
  const ClientForm({Key? key}) : super(key: key);

  @override
  State<ClientForm> createState() => _ClientFormState();
}

class _ClientFormState extends State<ClientForm> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    return Container(
      height: size.height * 0.6,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
          Text("Client # 1",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Nom: "),
              SizedBox(
                width: size.width * 0.6,
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Nom',
                    hintText: 'Tapez le nom du client',
                  ),
                ),
              ),
              
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Prénom: "),
              SizedBox(
                width: size.width * 0.6,
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Prénom',
                    hintText: 'Tapez le prénom du client',
                  ),
                ),
              ),

            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Téléphone: "),
              SizedBox(
                width: size.width * 0.6,
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Téléphone',
                    hintText: 'Tapez le téléphone',
                  ),
                ),
              ),

            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Adresse: "),
              SizedBox(
                width: size.width * 0.6,
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Adresse',
                    hintText: "Tapez l'adresse",
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}

