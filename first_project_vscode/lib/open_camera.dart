import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class PickCamera extends StatefulWidget {
  const PickCamera({super.key});

  @override
  State<PickCamera> createState() => _PickCameraState();
}

class _PickCameraState extends State<PickCamera> {
  File? fileImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
      ),
      body: Center(
        child: fileImage == null
            ? const Image(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/5234/5234839.png'
                    ))
            : Image(image: FileImage(File(fileImage!.path))),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              openGallary();
            },
            child: const Icon(Icons.image),
          ),
          FloatingActionButton(
            onPressed: () {
              openCamera();
            },
            child: const Icon(Icons.camera_alt_rounded),
          )
        ],
      ),
    );
  }

  void openCamera() async {
    var getImage = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      fileImage = File(getImage!.path);
    });
  }

  void openGallary() async {
    var getImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      fileImage = File(getImage!.path);
    });
  }
}
