import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('PopupMenuButton'),
        actions: [
          PopupMenuButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            position: PopupMenuPosition.under,
            icon: Icon(Icons.more_vert, color: Colors.black,),
            itemBuilder: (BuildContext context) {
              return[
                PopupMenuItem(
                    onTap: (){
                      print('Camera Tapped');
                    },
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.camera, color: Colors.black,),
                        SizedBox(width: 10,),
                        Text("Camera"),
                      ],
                    )
                ),
                PopupMenuItem(
                    onTap: (){

                    },
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.photo_library, color: Colors.black),
                        SizedBox(width: 10,),
                        Text("Gallery"),
                      ],
                    )
                ),
                PopupMenuItem(
                    onTap: (){

                    },
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.folder, color: Colors.black),
                        SizedBox(width: 10,),
                        Text("Folder"),
                      ],
                    )
                ),
                PopupMenuItem(
                    onTap: (){

                    },
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.file_copy, color: Colors.black),
                        SizedBox(width: 10,),
                        Text("File"),
                      ],
                    )
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: PopupMenuButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),
          position: PopupMenuPosition.under,
          icon: Icon(Icons.more_vert, color: Colors.black,),
          itemBuilder: (BuildContext context) {
            return[
              PopupMenuItem(
                onTap: (){
                  print('Camera Tapped');
                },
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(Icons.camera),
                      SizedBox(width: 10,),
                      Text("Camera"),
                    ],
                  )
              ),
              PopupMenuItem(
                  onTap: (){

                  },
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(Icons.photo_library),
                      SizedBox(width: 10,),
                      Text("Gallery"),
                    ],
                  )
              ),
              PopupMenuItem(
                  onTap: (){

                  },
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(Icons.folder),
                      SizedBox(width: 10,),
                      Text("Folder"),
                    ],
                  )
              ),
              PopupMenuItem(
                  onTap: (){

                  },
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(Icons.file_copy),
                      SizedBox(width: 10,),
                      Text("File"),
                    ],
                  )
              ),
            ];
          },
        ),
      ),
    );
  }
}
