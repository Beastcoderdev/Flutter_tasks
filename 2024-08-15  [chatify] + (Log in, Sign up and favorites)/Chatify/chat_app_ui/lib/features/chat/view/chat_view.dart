
import 'package:chat_app_ui/core/colors.dart';
import 'package:chat_app_ui/features/chat/widgets/chat_lists_view.dart';
import 'package:chat_app_ui/features/chat/widgets/fav_contacts.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {

  const ChatView({super.key});

  @override

  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
                  
            Navigator.of(context).pop();
              
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
        ),
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          "Chats",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),

        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.settings, color: Colors.white,),
            )
        ],

      ),

      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Padding(
            padding: EdgeInsets.all(20),


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
                  // FAV CONTACTS
                  FavContactsWidget(),
              
                ],
              ),
            ),
          
          
          // CHATS
          ChatListsView()

        ],

      ),
    );
  }
}
