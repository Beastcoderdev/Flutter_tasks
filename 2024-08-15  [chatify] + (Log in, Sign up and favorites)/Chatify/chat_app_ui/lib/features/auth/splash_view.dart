import 'package:chat_app_ui/features/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
      .pushReplacement(
        MaterialPageRoute(builder: (context) {
          return const LoginView();
        }),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                      'assets/logo.svg',
                      width: 150,  // You can set the size as per your requirement
                      height: 150,
                ),
              ),            
            ),

            Text(
              "Chatify",
              style: TextStyle(fontSize: 14),
              ),

            SizedBox(height: 50,),
            Text(
              "made with ♥ in Egypt",
              style: TextStyle(fontSize: 14),
              ),

          ],
        ),
      ),
    );
  }
}