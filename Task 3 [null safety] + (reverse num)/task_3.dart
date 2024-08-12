import 'dart:io';

void main(){
  //Loop the programe
  while(true){
    //Heading of the programe
    print('made by Antony');
    print('\n\n-----------------------Task 3------------------------\n');


    //menu of tasks   
    Map<int, String> task_title = {
      1:'Check a Number is Positive or Negative or Zero',
      2:'Calculate the Sum of first 100 Natural Numbers',
      3:'Count Number of Digits in an Integer',
      4:'Reverse a Number',
      5:'Calculate the Power of a Number',
      6:'A Simple Calculator Using switch...case.',
      7:'find largest and smallest element of 3 values',
      8:'display even numbers from 1 to n numbers',
      9:'find Factorial using loops\n',
      0:'About'
    };
    task_title.forEach((key, value){
      print('($key) -$value');
      
    });

    
    print('\n-----------------------------------------------------\n');

    stdout.write('your choise is: ');
    int task = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch(task){
      case 1:
        // (1)Check a Number is Positive or Negative or Zero
        print("Enter a number:");
        int? number = int.tryParse(stdin.readLineSync().toString()) ?? 0;
        if(number < 0){
          print("$number is a negative number");
        } else if(number > 0) {
          print("$number is a positive number");
        } else{
          print("your number is = to zero");
        }
      case 2:
        // (2)Calculate the Sum of first 100 Natural Numbers
        double res= 1;
        int nn = 100;

        for( double n = 1; n <= nn ; n++ ){
          res = n*(n+1)/2;

        }
        print("the sum of the first 100 natural number is ${res.toStringAsFixed(0)}");
      case 3:
        // (3)Count Number of Digits in an Integer
        print("Enter a number:");
        String? input = stdin.readLineSync() ?? "";
        int num_length = input.length;


        print("the digits in number $input is $num_length digits ");
      case 4:
        // (4)Reverse a Number
    
        int n, r, rev;
        stdout.write("enter a number you want to reverse:  ");
        n = int.tryParse(stdin.readLineSync()!) ?? 0;
        rev = 0;
        while(n !=0){
          r=n % 10;
          rev=(rev * 10)+ r;
          n=n~/10;
        }
        print("the reversed number is $rev");
      case 5:
        // (5)Calculate the Power of a Number
        print("Enter a number:");
        int number = int.tryParse(stdin.readLineSync()!) ?? 0;
        print("the power of $number is ${number*number}");
      case 6:
        // (6)A Simple Calculator Using switch...case.
        while(true){
          print('Enter the First number:');  
          int num1 = int.tryParse(stdin.readLineSync()!) ?? 0;
          print('Enter the Secound number:');
          int num2 = int.tryParse(stdin.readLineSync()!) ?? 0;




          print('Enter operation (   +, -, x, /   ):');
          String? sign = stdin.readLineSync() ?? 'Invalid input'; 

          switch(sign){
          
            // case _ according to the data type(int, string, ...etc)
            case '+':
              print("Sum is ${num1 + num2}");
              break;
            case '-': 
              print("Sum is ${num1 - num2}");
              break;
            case 'x': 
              print("Sum is ${num1 * num2}");
              break;
            case '/':
              print("Sum is ${num1 / num2}");
              break;
            default:
              print('Invaild Operation');
          }

          print('Do u want to make another calculation (y/n)?');
          String? res = stdin.readLineSync() ?? 'Invalid input';
          if(res.toLowerCase()=='n'){
            print('Thank you for using out calc!');
            break;
          } 
          // y or whatever. continue loop
        }
        break;
      case 7:
        // (7)find largest and smallest element of 3 values
        print("enter your 3 numbers:");
        int num1 = int.tryParse(stdin.readLineSync()!) ?? 0;
        int num2 = int.tryParse(stdin.readLineSync()!) ?? 0;
        int num3 = int.tryParse(stdin.readLineSync()!) ?? 0;

        if (num1 >= num2){
          if(num1 >= num3){ 
            print('$num1 is bigger than $num2 or $num3');
          }else{
            print('$num3 is bigger than $num2 or $num1');
          };
        }else{
          if(num2 >= num3){ 
            print('$num2 is bigger than $num1 or $num3');
          }else{
            print('$num3 is bigger than $num2 or $num1');
          };
        }
      case 8:
      // (8) display even numbers from 1 to n numbers
        print("enter a number:");
        int number = int.tryParse(stdin.readLineSync()!) ?? 0;
        for(int i = 0; i <= number ; i = i + 2){
          print(i);
        }
      case 9:
        // (9) find Factorial using loops
        stdout.write("enter a number:  ");
        
        int? n = int.tryParse(stdin.readLineSync()!) ?? 0;
        int factorial = 1;
        for(int i = 1; i <= n ;i++){
          factorial *= i;;
        }
        print("the factorial of $n is $factorial");

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