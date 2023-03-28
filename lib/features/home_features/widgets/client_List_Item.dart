import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';
import '../../../core/utils/common_functions.dart';
import '../../../core/utils/values/styles.dart';
import '../utils/models/client_model.dart';

class ClientListItem extends StatelessWidget {
  const ClientListItem({
    Key? key,
    required this.clientModel,
  }) : super(key: key);
  final ClientModel clientModel;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.02,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: size.width * 0.8,
            height: size.height * 0.3,
            padding: EdgeInsets.all(
              getResponsiveItemSize(
                width: size.width,
                value: 25,
              ),
            ),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  getResponsiveItemSize(
                    width: size.width,
                    value: 20,
                  ),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      clientModel.name ?? '',
                      style: poppinsBold.copyWith(
                        fontSize: getResponsiveItemSize(
                          width: size.width,
                          value: 17,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      clientModel.lastName ?? '',
                      style: poppinsBold.copyWith(
                        fontSize: getResponsiveItemSize(
                          width: size.width,
                          value: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getResponsiveItemSize(
                    width: size.width,
                    value: 15,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Text("Reference:"),
                        SizedBox(width: 10),
                        Text(
                          clientModel.reference ?? '',
                          style: poppinsBold.copyWith(
                            fontSize: getResponsiveItemSize(
                              width: size.width,
                              value: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Date d'ajout:"),
                        SizedBox(width: 10),
                        Text(
                          clientModel.date ?? '',
                          style: poppinsBold.copyWith(
                            fontSize: getResponsiveItemSize(
                              width: size.width,
                              value: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(width: 10),
                    Row(
                      children: [
                        Text("Adresse:"),
                        SizedBox(width: 10),
                        Text(
                          clientModel.adresse ?? '',
                          style: poppinsBold.copyWith(
                            fontSize: getResponsiveItemSize(
                              width: size.width,
                              value: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Téléphone:"),
                        SizedBox(width: 10),
                        Text(
                          clientModel.phone ?? '',
                          style: poppinsBold.copyWith(
                            fontSize: getResponsiveItemSize(
                              width: size.width,
                              value: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
