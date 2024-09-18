import 'package:flutter/material.dart';

class UploadView extends StatefulWidget {
  const UploadView({super.key});

  @override
  State<UploadView> createState() => _UploadViewState();
}

class _UploadViewState extends State<UploadView> {
  @override
  
  // initState make it appear for a certain time and change the screen 
  // the way you use "get.scence.()" in godot
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3),(){


    // });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        
      ),

    );
  }
}