import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:taskati/code/utils/text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  
  // initState make it appear for a certain time and change the screen 
  // the way you use "get.scence.()" in godot
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3),(){
    //   // ignore: use_build_context_synchronously
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (context) => const UploadView())
    //   );

    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              "Taskati",
              style: getTitleTextStyle(),
            ),
        
            const Gap(10),
            
            Text(
              'it\'s time to be Organized!',
              style: getTitleTextStyle(),
            )
          ],
        ),
      ),

    );
  }
}