import 'package:flutter/material.dart';

import 'colors.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(


  home: Scaffold(
    backgroundColor: AppColors.primary,
    
    appBar: AppBar(
      title: Text("🍕 BMI calculater"),
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,

      // leading: IconButton( onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.black) ),
    ),




  body:     
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                // male
                Expanded(
                  child: Container(
                    // child: Icon(Icons.male),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male, 
                            size: 100,
                            color: AppColors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "male",
                            style: TextStyle(color: AppColors.white),
                          )

                        ],
                      )

                    ),
                  ),
                ),
                

                const SizedBox(width: 10,),

                // female
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female, 
                            size: 100,
                            color: AppColors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "female",
                            style: TextStyle(color: AppColors.white),
                          )

                        ],
                      )

                    ),
                  ),
                ),
              ]
      
            )
          ),

          SizedBox(height: 10,),
          // Height
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.idel,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height", style: TextStyle(color: AppColors.white, fontWeight: FontWeight.w700),),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "120",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: AppColors.white,
                            ),
                            ),
                        SizedBox(width: 3,),
                        Text(
                          "CM",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColors.white,
                            ),
                            )
                      ],
                    )
                  ]
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          // Age and weight
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.idel,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
      
        ]
      
      
      
      
      ),
    )
    )  
    );
  
    
    

  }
}