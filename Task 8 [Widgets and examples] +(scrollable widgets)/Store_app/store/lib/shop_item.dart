import 'package:flutter/material.dart';
import'colors.dart';
  Container shop_Item() {
    return Container(
              width: double.infinity,
              height: 250,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: AppColors.box,
              ),

              // details in box
              child: Column(
                children: [
                  // header
                  Row(

                    
                    children: [
                      // image
                      Column(
                        children: [
                          Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0), // Set the corner radius here
                                image: DecorationImage(
                                  image: AssetImage('assets/coffee_table.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                          )
                        ]

                      ),
                      // title and price
                      Expanded(
                          child: Column(
                            children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 10),
                              
                              child: Text(
                              "Coffee Table",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.title_t,),
                              
                              ),
                            
                          ),
                            Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.all(5),
                            
                            child: const Row(
                              children: [
                                Icon(Icons.attach_money),

                                Text(
                                  '50.00',
                                  style: TextStyle(fontSize:20 ,fontWeight: FontWeight.w700,),
                                ),
                                  
                                ],

                              
                              )

                            ),
                          ],
                          
                          
                          )
                          

                        
                        
                      )
                    ]
                  ),
                  
                  SizedBox(height: 10,),
                  
                  Row(
                  
                    children: [
                      // Rating
                      Expanded(
                        child: Column(
                          
                          children: [
                            
                            Row(
                          
                          children: [
                            Icon(Icons.star, color: AppColors.star),
                            Icon(Icons.star, color: AppColors.star),
                            Icon(Icons.star, color: AppColors.star),
                            Icon(Icons.star, color: AppColors.star),
                            Icon(Icons.star, color: AppColors.star),

                        
                          
                          
                         
                          ],
                        
                        )
                        ],
                                ),
                      ),
                      // date created
                      Text(
                        "10/4/2022",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.date_t,),

                        
                      )
                      
                      
                      
                    ]
                        
                    ),
                  
                  SizedBox(height: 10,),
                  
        
                  const Wrap(
                  children: <Widget>[

                  
                  Text(
                      "Nice furniture with good delivery. The delivery time is very fast. Then products look exactly like the picture in the app. Besides, color is also the same and quality is very good despite very cheap price.",
                      style:TextStyle(fontSize: 15),

                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.clip,
                      maxLines: 4,
                      softWrap: true,
                    ),
                  
                  ],

                  )
                    
                    ],
                  )
            );
  }
