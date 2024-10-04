import 'package:chat_app_ui/core/colors.dart';
import 'package:chat_app_ui/features/auth/view/signup_view%20.dart';
import 'package:chat_app_ui/features/chat/view/chat_view.dart';
import 'package:chat_app_ui/features/chat/widgets/TextFromField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isHidden = false;

  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const CircleAvatar(
                  //   radius: 100,
                  //   backgroundColor: Colors.white,
                  //   backgroundImage: AssetImage("assets/logo.svg"),
                  // ),
      
                  
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Hello !",
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 40,
                    ),
                  ),
                 Text(
                    "WELCOME BACK",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 40,
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  // Email
                  CustomTextFormField(
                    labelText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if (value!.isEmpty){
                        return "Please enter your email";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(),
                  ),
              
                  const SizedBox(height: 15,),

                  // Password
                  CustomTextFormField(
                    labelText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    
                    validator: (value){
                      if (value!.isEmpty){
                        return "Please enter your password";
                      } else if (value.length < 9){
                        return "Password mush at least be 9 characters";
                      }
                      return null;
                    },



                    decoration: InputDecoration(
                     
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isHidden = !isHidden;
                          });
                        }, 
                        icon: (isHidden)
                          ? Icon(FontAwesomeIcons.solidEyeSlash, color: AppColors.blackColor)
                          : Icon(FontAwesomeIcons.solidEye, color: AppColors.blackColor)
                        ),

                    ),
               
                      
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  // Forgot password
                   Center(
                     child: TextButton(
                      onPressed: (){
                        print("Forgot Password!!");
                      }, 
                      child: const Text("Forgot Password", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),),
                      ),
                   ),
                  const SizedBox(height: 10,),
                  Center(
                    child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      onPressed:(){
                        if (formkey.currentState!.validate()){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatView()));
                        }
                      }, 
                      child: const Text("Log in", style: TextStyle(fontSize: 18),)),
                      ),
                  ),
                      
                const SizedBox(height: 25,),
                      
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: 
                          (context) => const SignupView(),
                        )
                        );
                    }, 
                    child: const Text("SIGN UP", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),),
                    )
                ],
              )
                      
                ],
              ),
            ),
          )
          ),
      ),
    );
  }
}