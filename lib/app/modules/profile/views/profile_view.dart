import 'dart:typed_data';
// import 'dart:io';

import 'package:berita_bola_app_bismilah/app/modules/profile/views/utils.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import '../../widgets/bottom_nav_bar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  State<ProfileView> createState() => _MyProfileView();
}

class _MyProfileView extends State<ProfileView> {
  //File? _selectedImage;
  Uint8List? _image;
  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(index: 2),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 64,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : const CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                      ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () {
                      selectImage();
                    },
                    icon: const Icon(Icons.add_a_photo_rounded),
                  ),
                )
              ],
            )
            // MaterialButton(
            //   color: Colors.blue,
            //   child: const Text(
            //     'pick image from gallery',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            //   onPressed: () {
            //     _pickImageFromGallery();
            //   },
            // ),
            // MaterialButton(
            //   color: Colors.blue,
            //   child: const Text(
            //     'pick image from camera',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            //   onPressed: () {
            //     _pickImageFromCamera();
            //   },
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // _selectedImage != null
            //     ? Image.file(_selectedImage!)
            //     : Text("please select image")
          ],
        ),
      ),
    );
  }

  // Future _pickImageFromGallery() async {
  //   final returnedImage =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (returnedImage == null) return;
  //   setState(() {
  //     _selectedImage = File(returnedImage.path);
  //   });
  // }

  // Future _pickImageFromCamera() async {
  //   final returnedImage =
  //       await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (returnedImage == null) return;
  //   setState(() {
  //     _selectedImage = File(returnedImage.path);
  //   });
  // }
}
