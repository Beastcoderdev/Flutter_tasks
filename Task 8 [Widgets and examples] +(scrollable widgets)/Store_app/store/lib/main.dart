import 'package:flutter/material.dart';
import 'colors.dart';
import 'shop_item.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(


      home: Scaffold(
        backgroundColor: AppColors.scaffoldbg,
        
        appBar: AppBar(
          
          leading: IconButton( onPressed: (){}, icon: const Icon(Icons.arrow_back_ios),),
          title:  Text("My reviews"),
          centerTitle: true,


          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          ],
        ),



        body: ListView(
          children: [
            const SizedBox(
              width: 10,
            ),

            // One item
              shop_Item(),
              shop_Item(),
              shop_Item(),
              shop_Item(),
              shop_Item(),
              shop_Item(),
              shop_Item(),
              shop_Item(),



          
          ] // Box detailes

                
                   
        ) 
      ),
      
  );
     
  }


}
