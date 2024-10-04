import 'package:bmi/views/result_view.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int weight = 85;
  int age = 24;
  int height = 220;

  bool isMale = false;


  @override
  Widget build(BuildContext context) {
  return MaterialApp(


  home: Scaffold(
    backgroundColor: AppColors.primary,
    
    appBar: AppBar(
      title: const Text("🍕 BMI calculater"),
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,

      // leading: IconButton( onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.black) ),
    ),




  body:     
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  // male
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        // child: Icon(Icons.male),
                        decoration: BoxDecoration(
                          color: (!isMale)
                           ? AppColors.idle
                           : Colors.blue,
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
                                color: (!isMale)
                                  ? AppColors.accent
                                  : AppColors.white,
                              ),
                              const SizedBox(
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
                  ),
                  
        
                  const SizedBox(width: 15,),
        
                  // female
                  Expanded(
        
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: (!isMale)
                           ? Colors.pink
                           : AppColors.idle,
        
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
                                color: (isMale)
                                  ? AppColors.accent
                                  : AppColors.white, // Background color ,
                              ),
                              const SizedBox(
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
                  ),
                ]
        
              )
            ),
        
            const SizedBox(height: 15,),
            // Height
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.idle,
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
                            height.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: AppColors.white,
                              ),
                              ),
                          const SizedBox(width: 3,),
                          Text(
                            "CM",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: AppColors.white,
                              ),
                          ),
                        
                        ],
                      ),
                      Slider(
                        value: height.toDouble(), 
                        min: 45,
                        max: 220,
                        activeColor:(isMale)
                           ? Colors.blue
                           : Colors.pink,
                        inactiveColor: AppColors.accent,
                      onChanged: (value){
                        setState(() {
                          height = value.toInt();
                        });
        
                      })
                    ]
                  ),
                  
                ),
              ),
            ),
            const SizedBox(height: 15,),
            // Age and weight
            Expanded(
              child: Row(
                children: [
                  // weight
                  Expanded(
                    child: Container(
                      // child: Icon(Icons.male),
                      decoration: BoxDecoration(
                        color: AppColors.idle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
        
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                                ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: AppColors.white,
                                  ),
                                ),
        
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton.small(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30), // Rounded corners
                                      ),
                                      elevation: 0, //remove shadow when 0
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                        weight--;
                                        print(weight);
        
                                        });
        
                                      }, 
                                      child: const Icon(Icons.remove)),
                                    const SizedBox(width: 20,),
                                    FloatingActionButton.small(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30), // Rounded corners
                                      ),
                                      elevation: 0, //remove shadow when 0
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                        weight++;
                                        print(weight);
                                        });
        
                                      }, 
                                      child: const Icon(Icons.add)),
                                  ],
                                )
                              ]
                          
                            )
                        
                          ],
                        )
        
                      ),
                    ),
                  ),
                  
        
                  const SizedBox(width: 15,),
                  // age
        
                  Expanded(
                    child: Container(
                      // child: Icon(Icons.male),
                      decoration: BoxDecoration(
                        color: AppColors.idle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
        
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Age",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                                ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  age.toString(),
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: AppColors.white,
                                  ),
                                ),
        
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton.small(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30), // Rounded corners
                                      ),
                                      elevation: 0, //remove shadow when 0
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                        age--;
                                        print(age);
        
                                        });
        
                                      }, 
                                      child: const Icon(Icons.remove)),
                                    const SizedBox(width: 20,),
                                    FloatingActionButton.small(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30), // Rounded corners
                                      ),
                                      elevation: 0, //remove shadow when 0
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                        age++;
                                        print(age);
                                        });
        
                                      }, 
                                      child: const Icon(Icons.add)),
                                  ],
                                )
                              ]
                          
                            
                          )
                          ],
                        )
        
                      ),
                    ),
                  ),
                  
                
                ]
        
              )
            ),
              const SizedBox(height: 15),
              SizedBox(
                
                height: 100,
                width: double.infinity,
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (isMale)
                           ? Colors.blue
                           : Colors.pink, // Background color 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                  
                  child: Text(
                    "calculate",
                    style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    )
                  ),
                  onPressed: (){
                    double bmi = weight / ((height / 100) * (height / 100));
                    
                    
                    Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context){
                      return ResultView(result: bmi, height: height, weight: weight, isMale: isMale,);
                    }));
                  }, 
                ),
            
              
        
              
              )
          ]
        
        
        
        
        ),
      ),
    )
    )  
    );
  
    
    

  }
}

