import 'package:bmi/colors.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key, required this.result, required this.weight,required this.height, required this.isMale});
  final double result;
  final int weight;
  final int height;

  late bool isMale;
  
  late Color? color;
  String getResultLevel(){
    if(result <= 18.4){
      color = const Color.fromARGB(255, 244, 149, 54);
      return "Underweight"; 
    } else if(result <= 24.9){
      color = Colors.yellow;
      return "Normal"; 
    } else if(result <= 39.9){
      color = const Color.fromARGB(255, 240, 144, 137);
      return "Overweight";
    } else {
      color = Colors.red;
      return "Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        centerTitle: true,
        title: Text("📃 BMI Results"),
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
      ),



      body: Padding(
        padding: const EdgeInsets.all(20.0),
          child: Column(
            children:[
             
              const SizedBox( 
                  height: 30,
                ),
              Text(
                "Your result",
                style: TextStyle(
                color: AppColors.white,
                fontSize: 30,

                )
              ),
              const SizedBox( 
                  height: 20,
                ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.idle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        getResultLevel(),
                        style: TextStyle(fontSize: 24,color: color),
                          
                      ),
                      const SizedBox(height: 30),
                      Text(result.toStringAsFixed(2), style: TextStyle(fontSize: 60, color: AppColors.white),),
                      const SizedBox(height: 10),
                      
                      Text("your height is: $height cm \nand your weight is $weight kg", style: TextStyle(fontSize: 20, color: AppColors.white),),
                    ]
                  ),
                ),
              ),

              const SizedBox(height: 20),


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
                      "Re-calculate",
                      style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      )
                    ),
                    onPressed: (){
                      Navigator.of(context).pop();
                    }, 
                  ),
              
                
                    
                
                )
            
            ],
              
              
              ) 
            
            ),
          );

  }
}