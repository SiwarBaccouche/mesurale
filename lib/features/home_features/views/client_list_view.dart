import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';

import '../utils/models/client_model.dart';
import '../widgets/client_List_Item.dart';
import 'home_page.dart';

class ClientListView extends StatefulWidget {
  const ClientListView({Key? key}) : super(key: key);

  @override
  State<ClientListView> createState() => _ClientListViewState();
}

class _ClientListViewState extends State<ClientListView> {
  final List<ClientModel> _list = [
    ClientModel(
      name: 'Mohamed',
      lastName: 'Ali',
      reference: '1',
      date: '10/03/2010',
      phone:'+216555555',
      adresse:'Msaken',
    ),
    ClientModel(
      name: 'Mohamed',
      lastName: 'Ali',
      date: '10/03/2010',
    ),
    ClientModel(
      name: 'Mohamed',
      lastName: 'Ali',
      date: '10/03/2010',
      phone: '+5112551',
    ),
    ClientModel(
      name: 'Mohamed',
      lastName: 'Ali',
      date: '10/03/2010',
      phone: '+5112551',
    ),
    ClientModel(
      name: 'Mohamed',
      lastName: 'Ali',
      date: '10/03/2010',
      phone: '+5112551',
    ),
    ClientModel(
        name: 'Mohamed',
        lastName: 'Ali',
        date: '10/03/2010',
        phone: '+5112551'),
  ];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: _list.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                  child: ClientListItem(
                    clientModel: _list[index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
