
import 'package:chat_app_ui/core/colors.dart';
import 'package:chat_app_ui/core/models/user_model.dart';
import 'package:flutter/material.dart';

class FavContactsWidget extends StatelessWidget {
  const FavContactsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Favoirte contacts",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 10,),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              return Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.blackColor,
                    backgroundImage: AssetImage(userlist[index].image ?? 'assets/user1.png'),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    userlist[index].name?.split(" ").first ?? 'Name',
                    style: const TextStyle(
                      color: Colors.white,
                      
                      ),
                    ),
                
               
                
                ],
              );
            }, 
            separatorBuilder: (context, index) {
              return const SizedBox(width: 20);
            },
            itemCount: 6
          ),
        ),
      

      ]
                   
        
    );
  }
}