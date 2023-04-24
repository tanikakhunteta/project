import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker1 extends StatefulWidget {
  const ImagePicker1({super.key});

  @override
  State<ImagePicker1> createState() => _ImagePicker1State();
}

class _ImagePicker1State extends State<ImagePicker1> {
  File? file;

  getimage() async {
    // ignore: deprecated_member_use
    await ImagePicker().getImage(source: ImageSource.camera).then((value) {
      setState(() {
        file = File(value!.path);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple,
          title: Text("Image Picker"),
          actions: [
            IconButton(
                onPressed: () {
                  getimage();
                },
                icon: Icon(Icons.camera_alt_outlined))
          ],
        ),
        body: file == null
            ? Image.asset(
                "assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg")
            : Image.file(file!));
  }
}
