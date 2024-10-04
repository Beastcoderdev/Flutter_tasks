import 'package:chat_app_ui/features/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            
            SvgPicture.asset(
              "assets/logo.svg",
              height: 200,
              width: 200,
            ),
            const Text(
              "Chatify",
              style: TextStyle(fontSize: 14),
              ),

            const SizedBox(height: 50,),
            const Text(
              "made with ♥ in Egypt",
              style: TextStyle(fontSize: 14),
              ),

          ],
        ),
      ),
    );
  }
}