import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';


class Imageget extends StatefulWidget {
  const Imageget({super.key});

  @override
  State<Imageget> createState() => _ImagegetState();
}

class _ImagegetState extends State<Imageget> {
  @override

  XFile? file;

  Future<void> getPermission() async {
    var permission_handler = await Permission.photos.request();
    if(permission_handler.isGranted){
      print("Permission Granted");
      getImage();
    }else{
      print("Permission Not Granted");
    }
  }
  Future<void> getImage() async {
  ImagePicker image = new ImagePicker();
  var picker = await image.pickImage(source:ImageSource.gallery);
  setState(() {
    file = picker;
  });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GET image"),),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){

            getPermission();
          }
          , child: Text("Gallery"))
        ],
      ),
    );
  }
}