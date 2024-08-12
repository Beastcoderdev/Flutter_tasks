import 'dart:io';

void main(){
  //Loop the programe
  while(true){
    //Heading of the programe
    print('made by Antony');
    print('\n\n-----------------------Task 2------------------------\n');


    //menu of tasks   
    Map<dynamic, String> task_title = {
      1:'remove all whitespaces from String',
      2:'Round a Number to “n” Decimal Places.',
      3:'Capitalize the first character in a String',
      4:'Check if a string contains a substring',
      5:'get the union and intersection of two sets',
      6:'get the total and average of fixed numbers',
      7:'Circle calculator\n',
      0:'About'
    };
    task_title.forEach((key, value){
      print('($key) -$value');
    });

    print('\n-----------------------------------------------------\n');


    int task = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch(task){
      case 1:
        // (1)Write a program in Dart to remove all whitespaces from String
        String name = 'Antony Hany William';
        var res1 = name.replaceAll(' ', '');
        print('remove whitespaces $res1\n');
        break;
      case 2:
        // (2)Dart Program to Round a Number to “n” Decimal Places.
        double n = 29.76532;
        var res2 = n.toStringAsFixed(2);
        print('round a number from 29.76532 to $res2\n');
        break;
      case 3:
        // (3)Dart Program to Capitalize the first character in a String.
        //print('Enter the Radius of the circle:');  
        print("Enter your name:");
        String? name = stdin.readLineSync() ?? 'antony';
        print("\nyou entered->$name");
        var res3 = name[0].toUpperCase() + name.substring(1).toLowerCase();
        print("make the first letter uppercase: $res3\n");
        break;
      case 4:
        // (4)Dart Program to Check if a string contains a substring
        String check = 'Antony';
        print("👇check if the string contains substring");
        print(check.isNotEmpty);
        print('\n');
        break;
      case 5:
        // (5)Dart Program to Calculate union and intersection of two sets
        Set<int> set1 = {2, 4, 5, 3, 7};
        Set<int> set2 = {4, 6, 2, 8, 9};
        Set<int> union = set1.union(set2);
        Set<int> intersection = set1.intersection(set2);
        print('the union is $union');
        print('the intersection is $intersection\n');
        break;
      case 6:
        // (6)Create a program to reads list of integer value and print total and average. 
        List<int> numbers = [12, 14, 52, 23, 33];
        // total of all integers
        int sum = 0;
        numbers.forEach((element) {
          sum = sum + element;
        });
        print('the total is $sum');

        // average is sum/count
        double average = sum / numbers.length;
        
        print('the avg is $average');
        break;
      case 7:
        // (7)Write a program to input the value of the radius of a circle and then calculate its perimeter and area.
        print('--------------Circle calculator--------------');   
        while(true){
          
          print('Enter the Radius of the circle:');  
        
          String? value = stdin.readLineSync();
          double radius = double.tryParse(value.toString()) ?? 0; 
        

          double perimeter = 2*3.141592653589793*radius;
          double area = 3.141592653589793*(radius*radius);
          String per_res = perimeter.toStringAsFixed(2);
          String area_res = area.toStringAsFixed(2);


          print('What do you want to calculate? \n (a) Premeter \n (b) Area \n (c) Both:');
          String? operation = stdin.readLineSync() ?? 'Invalid input'; 


          switch(operation){
          case 'a':
            print('A circle with a radius of $radius cm');
            print('has an permeter of $per_res cm\n');
            break;
          case 'b': 
            print('A circle with a radius of $radius cm');
            print('has an area of $area_res cm^2\n');
            break;
          case 'c': 
            print('A circle with a radius of $radius cm');
            print('has an permeter of $per_res cm');
            print('And an area of $area_res cm^2\n');
            break;
          default:
            print('Invaild Operation\n');
            break;
          } // end switch operation

          
          print('Do u want to make another calculation [ y / n ]?');
          print("\n - type 'y' for Yes \n - press Enter or any key for No ");
          String? res = stdin.readLineSync() ?? 'Invaild Input';
          
          if(res =='y'){
            print('--------------Circle calculator--------------');    
          }else{
            print('Thank you for using our calculator ☠ !');
            break;
          }
          
        } // end while loop of the calculator
        break;
      case 0:
        print("\nThis programe was written by Antony Hany \nI love flutter 😜");
        break;
      default: 
        print('Invaild programe');
        break;
      }// end of the main switch of (task)


    // End screen
      print('Do u want to make another operations [ y / n ]?');
      print("\n - type 'y' for Yes \n - press Enter OR any key for No ");
      String? res = stdin.readLineSync() ?? "Sorry we didn't understand your input";
      
      if(res =='y'){
        print('*****************Restarting the programe*****************');    
      }else{
        print("Thank you for using our program");
        break;
      }

  }
    
} // end of main method