import 'dart:math';

import 'package:flutter/material.dart';
import 'colors.dart';

void main() {
  runApp(const MainApp());
}

// https://www.youtube.com/watch?v=2aJZzRMziJc  make an expansion panel

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<MainApp> {
  int counter = 1;
  bool isAdded = true;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(


      home: Scaffold(
        backgroundColor: AppColors.scaffoldbg,
        
        appBar: AppBar(
          backgroundColor: AppColors.appbar,
          leading: IconButton( onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: AppColors.controls) ),
        ),



        body: 
        
        ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [

              
               // header
                        Row(
              
                    
                          children: [
                            // image
                            Expanded(
              
                                
                                child: Container(
            
                                    width: 350,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20), // Set the corner radius here
                                      image: const DecorationImage(
                                        image: AssetImage('assets/pizza-offer.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                )
                              
              
                            ),
                          ]
                  ),
                        const SizedBox(height: 10,),
                        // title
                        Row(
                          children: [
                            Text(
                              "Yomnista Combo",
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: AppColors.primary),
                              )
              
                          ],
              
              
                        ),
                        
                        // rating and product count
                        Row(
                          children: [
                            Expanded
                            (child: Row(
                              children:[ 
                                Icon(Icons.star, color: AppColors.controls,),
                                const Text(
                                  " 4(3)",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
            
                               ]
                            )
                            
                            ),
                            Container(
                              padding: const EdgeInsets.all(3),
            
                              decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius:BorderRadius.circular(25),
                              ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                 
                                  children: [
                                    IconButton(
                                      color: (isAdded)?AppColors.controls:Colors.white,

                                      style: IconButton.styleFrom(

                                        backgroundColor: (isAdded)?AppColors.appbar:AppColors.controls,
                                      ),

                                      onPressed: () {
                                        isAdded = false;
                                        if(counter > 1){
                                          setState(() {
                                          counter--; //counter = counter-1
                                          });
                                        }
                                
                                        print(counter);
                                      },
                                      icon:  const Icon(Icons.remove),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      counter.toString(),
                                      
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                
                                    const SizedBox(
                                      width: 5,
                                    ),
                                
                                    IconButton(
                                      color: (isAdded)?Colors.white:AppColors.controls,


                                      style: IconButton.styleFrom(

                                        backgroundColor: (isAdded)?AppColors.controls:AppColors.appbar,
                                      ),

                                      onPressed: () {
                                        isAdded = true;
                                        if(counter < 40){
                                          setState(() {
                                          counter++; //counter = counter-1
                                          });
                                        }
                                
                                        print(counter);
                                      },
                                      icon:  const Icon(Icons.add),
                                    ),
                                
                                ],
                                ),
                              
                            ),
                            
            
            
            
            
                          ],
            
                        ),
            
            
            
            
                        // Description
                        Row(
                          children:[
                              
                            Text(
                              "Description",
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.primary),
                            ),
            
                          ]
                          ),
                        const Row(
                          children:[
                              
                          Text(
                              "Buy Italian Pizza Get one free!",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),
                            ),    
            
                          ]
                          ),
            
                        const SizedBox(
                          height: 12,
                        ),
            
                        // price and buy button
                        Row(
                        children: [
                          //price
                          const Expanded(
                            child: Row(
                            children:[ 
            
                              Text(
                                "EGP 420",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                                ),
            
                              ]
                          )
                          ),
            
                        // add to cart
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(200)
                                  ),
                                  backgroundColor: AppColors.secondary,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: (){}, child: const Text("ADD TO CART"))
                          ],
                          ),
            
            
                        ],
            
                      ),
                        Divider(color: AppColors.appbar,thickness:3),
                        const SizedBox(height: 20,),
            
            
                        // FEEDBACK

                        Row(
                          children: [
                            Expanded(
                              
                              child: Column(
                                children: [
                                Row(
                                    children:[
                                      
                                      Text(
                                        "Review",
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: AppColors.primary),
                                      ),
                    
                                    ]
                                  ),
                                  const Row(
                                    children:[
                                          
                                      Text(
                                          "Send your feedback Now!",
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),
                                        ),    
                    
                                  ]
                                  ),
                              ],
                            )
                            )   ,
                            // Act like an accordion but I tried multiple ways that all of them doesn't seem to work ;(
                            IconButton(
                              icon: const Icon(Icons.keyboard_arrow_up_rounded),
                              onPressed: (){},
                            ) 
                          ],
                        ),
                        
            
                        const SizedBox(
                          height: 12,
                        ),
                        // feedback box
                        SizedBox(
                          width: double.infinity,
                          // height: 200, // used maxLines:_ instead
                          
                          child: TextFormField(
                            maxLines: 3, 
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              enabledBorder:const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black, // Black border color
                                width: 2.0, // Border width
                              ),
                              ),
                              focusedBorder:const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black, // Black border color
                                width: 2.0, // Border width
                              ),
                              ),    
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,

                              
                              ),
                          
                              hintText: 'Add a comment...\n\n\n\n\n',
                              hintStyle: TextStyle(
                                color: AppColors.secondary.withOpacity(0.3)
                              )
                            ),
                          ),
                        ),

                      const SizedBox(height: 5,),
                        Row(
                        
                          children: [
                            // Rating
                            Expanded(
                              child: Row(
                                
                                children: [
                                  Icon(Icons.star_border_sharp, color: AppColors.primary),
                                  const SizedBox(width: 2,),
                                  Icon(Icons.star_border_sharp, color: AppColors.primary),
                                  const SizedBox(width: 2,),
                                  Icon(Icons.star_border_sharp, color: AppColors.primary),
                                  const SizedBox(width: 2,),
                                  Icon(Icons.star_border_sharp, color: AppColors.primary),
                                  const SizedBox(width: 2,),
                                  Icon(Icons.star_border_sharp, color: AppColors.primary),
                                 


                                    /// DOESN"T WORK FOR A REASON?! ;(
                                // ListView.separated( 
                                //   scrollDirection: Axis.horizontal,
                                //   padding: const EdgeInsets.all(3.0),
                                //   itemCount: 5, // Number of items in the list
                                //   itemBuilder: (context, index) {
                                //     return Icon(Icons.star_border_sharp, color: AppColors.primary);

                                //   },
                                //   separatorBuilder: (context, index) {
                                //     return const SizedBox(width: 5); // Space between items
                                //   },
                                // ),
                              ]
                              ),

                              
                                
                                
                            ),    




                            // date created
                              SizedBox(
                                width: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: TextButton( 
                                  
                                    style: ElevatedButton.styleFrom(
                                    
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      backgroundColor: AppColors.primary,
                                      foregroundColor: AppColors.appbar,
                                    ),
                                    onPressed: (){}, child: const Text("SEND")),
                                ),
                              )
                            
                            
                            
                          ]
                              
                    ),
                      
                          
            
            
            
                 // Box detailes
              
              
                 ] // One item
            )
            )
          ]
        )
      
                         
    

      ),
      
  );
     
  }

}

