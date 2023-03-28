/*import 'package:flutter/material.dart';
import '../../../../core/utils/values/colors.dart';

class CatalogueImages extends StatefulWidget {
  const CatalogueImages({Key? key}) : super(key: key);

  @override
  State<CatalogueImages> createState() => _CatalogueImagesState();
}

class _CatalogueImagesState extends State<CatalogueImages> {
  @override
  Widget build(BuildContext context) {
    return
      ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 28),
          Container(
            height: 280,
            width: 280,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/placeholder_image.png"),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: 280,
            width: 280,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/placeholder_image.png",
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: 280,
            width: 280,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/placeholder_image.png",
                ),
              ),
            ),
          ),
        ],
      );
  }
}

*/

/*

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CatalogueImages extends StatefulWidget {
  const CatalogueImages({Key? key}) : super(key: key);

  @override
  _CatalogueImagesState createState() => _CatalogueImagesState();
}

class _CatalogueImagesState extends State<CatalogueImages> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalogue Images'),
      ),
      body: ListView.builder(
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: Image.file(_images[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickImage,
        tooltip: 'Add Image',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/utils/values/colors.dart';

class CatalogueImages extends StatefulWidget {
  const CatalogueImages({Key? key}) : super(key: key);

  @override
  _CatalogueImagesState createState() => _CatalogueImagesState();
}

class _CatalogueImagesState extends State<CatalogueImages> {
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

      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(size.width*0.02),
            height: size.width*0.7,
            width: size.width*0.7,
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
      floatingActionButton: FloatingActionButton(
        onPressed: _pickImage,
        tooltip: 'Add Image',
        child: const Icon(Icons.add),
      ),
    );
  }
}
