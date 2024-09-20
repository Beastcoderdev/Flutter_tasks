import 'package:chat_app_ui/core/colors.dart';
import 'package:chat_app_ui/features/auth/view/login_view.dart';
import 'package:chat_app_ui/features/chat/view/chat_view.dart';
import 'package:chat_app_ui/features/chat/widgets/TextFromField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      
                  const SizedBox(
                    height: 20,
                  ),
                  
                  const Text(
                    "Create an account",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 15,
                  ),
                  ),
                  
                  
                  const SizedBox(
                    height: 20,
                  ),
            
                  // Name
                  CustomTextFormField(
                    keyboardType: TextInputType.name,
                     validator: (value){
                        if (value!.isEmpty){
                          return "Please enter your name";
                        }
                        return null;
                      },
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person, color: AppColors.primaryColor),
                      enabledBorder: CustomTextFormField.enabledBorder,
                      focusedBorder: CustomTextFormField.focusedBorder,
                      errorBorder: CustomTextFormField.errorBorder,
                      focusedErrorBorder: CustomTextFormField.focusedErrorBorder,
                    ),
                  ),
                  
                  const SizedBox(height: 15,),
                  
                  // Email
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                        if (value!.isEmpty){
                          return "Please enter your email";
                        }
                        return null;
                      },
                    decoration: InputDecoration(
                      labelText: "Email address",
                      prefixIcon: Icon(Icons.email, color: AppColors.primaryColor),
                      enabledBorder: CustomTextFormField.enabledBorder,
                      focusedBorder: CustomTextFormField.focusedBorder,
                      errorBorder: CustomTextFormField.errorBorder,
                      focusedErrorBorder: CustomTextFormField.focusedErrorBorder,
                    ),
                  ),
            
            
                  const SizedBox(height: 15,),
                  
                  // Password
                  CustomTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                        if (value!.isEmpty){
                          return "Please enter your password";
                        }
                        return null;
                      },
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password, color: AppColors.primaryColor),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isHidden = !isHidden;
                          });
                        }, 
                        icon: (isHidden)
                          ? Icon(FontAwesomeIcons.solidEyeSlash, color: AppColors.primaryColor)
                          : Icon(FontAwesomeIcons.solidEye, color: AppColors.primaryColor)
                          ),
                      enabledBorder: CustomTextFormField.enabledBorder,
                      focusedBorder: CustomTextFormField.focusedBorder,
                      errorBorder: CustomTextFormField.errorBorder,
                      focusedErrorBorder: CustomTextFormField.focusedErrorBorder,
                    ),
                  ),
            
            
                  const SizedBox(height: 10,),
                  SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () { 
                      if (formkey.currentState!.validate()){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatView()));
                     }
                    },

                    child: const Text("Login")
                  
                  )

                  
              
              

                    
                ),
                      
                const SizedBox(height: 25,),
                      
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do you have an account ?"),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: 
                          (context) => const LoginView(),
                        )
                        );
                    }, 
                    child: const Text("Log in!"),
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