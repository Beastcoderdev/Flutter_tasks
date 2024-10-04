import 'package:chat_app_ui/core/colors.dart';
import 'package:chat_app_ui/features/auth/view/login_view.dart';
import 'package:chat_app_ui/features/chat/view/chat_view.dart';
import 'package:chat_app_ui/features/chat/widgets/TextFromField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool isHidden = false;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    

                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 40,
                    ),
                  ),
                  
                  
                  const SizedBox(
                    height: 20,
                  ),
            
                  // Name
                  CustomTextFormField(
                    labelText: "Name",
                    keyboardType: TextInputType.name,
                     validator: (value){
                        if (value!.isEmpty){
                          return "Please enter your name";
                        }
                        return null;
                      },
                    decoration: const InputDecoration(
                    
                    ),
                  ),
                  
                  const SizedBox(height: 15,),
                  
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
                    decoration: const InputDecoration(


                    ),
                  ),
            
            
                  const SizedBox(height: 15,),
                  
                  // Password

                  CustomTextFormField(
                    labelText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                        if (value!.isEmpty){
                          return "Please enter your password";
                        }
                        return null;
                      },
                
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password, color: AppColors.blackColor),
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
            
            
                  const SizedBox(height: 20,),
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
                      child: const Text("Sign up", style: TextStyle(fontSize: 18),)),
                      ),
                  
                  

                  
              
              

                    
                ),
                      
                const SizedBox(height: 25,),
                      
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do you have an account ?", style: TextStyle(fontSize: 14),),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: 
                          (context) => const LoginView(),
                        )
                        );
                    }, 
                    child: const Text("Log in!", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                    ),

                    
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