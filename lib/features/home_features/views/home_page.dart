import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mesurale/features/home_features/views/components/catalogue_images_list.dart';
import '../../../core/utils/values/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<File> _images = [];

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _images.add(File(pickedImage.path));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: "Catalogue",
                        child: Material(
                          color: Colors.transparent,
                          child: Text("Catalogue",
                              style: TextStyle(
                                  color: primaryText,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              themeColor), // Set background color
                          foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ), // Set text color
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              // Set button border
                            ),
                          ),
                        ),
                        onPressed: _pickImage,
                        child: Icon(
                          Icons.add,
                          size: size.width * 0.05,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "Nous avons les meilleurs produits!",
                    style: TextStyle(
                        color: primaryText.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SizedBox(
                height: size.height*0.5,
                  child: // CatalogueImages(),
                      ListView.builder(
                    padding: EdgeInsets.all(size.width * 0.02),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: _images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsetsDirectional.all(size.width*0.02),
                        padding: EdgeInsets.all(size.width * 0.02),
                        height: size.height * 0.8,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/placeholder_image.png"),
                          ),
                        ),
                        child: Image.file(
                          _images[index],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),

              ],
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: secondaryColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 22, right: 22, top: 20, bottom: 10),
                    child: Material(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(360),
                            onTap: onBackIconTapped,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_sharp,
                                  color: secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 87,
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                        stops: [
                          0,
                          1
                        ],
                        colors: [
                          secondaryColor,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void onBackIconTapped() {}
