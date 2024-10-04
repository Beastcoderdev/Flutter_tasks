
import 'package:chat_app_ui/core/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatListsView extends StatelessWidget {
  const ChatListsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
     
      child: Container(
        decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(20),
        topEnd: Radius.circular(20),
              ),
        ),
    
        
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index){
          return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(userlist[index].image ?? 'assets/user1.png'),
                    
                ),
                  
                title: Text(
                  userlist[index].name?.split(" ").first ?? 'Name',
                  style: const TextStyle(
                    color: Colors.black,
                    
                    ),
                ),
    
                subtitle: Text(userlist[index].lastMsg ?? "Last message",),
                trailing: Text(userlist[index].time ?? 'Last : time'),
              
            
            
          );
          }, 
          separatorBuilder: (context, index) {
          return const Divider(thickness: 1,color: Color.fromARGB(255, 171, 171, 171),);
          },
          itemCount: 6
          ),
        ),
      
    
      )
    );
  }
}

