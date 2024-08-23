import 'dart:io';
import 'bank_account.dart';
import 'shape.dart';

void main(){
  while(true){
    print("made by Antony");
    print("\n\n_________________Task 5_________________");

    Map<int, String> operation_title = {
      1:"Encapsulation",
      2:"Inheritance"
    };

    // print menu
    operation_title.forEach((key, value){
      print('($key) -$value');
      
    });

    stdout.write('your choice is: ');
    int operation = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch(operation){
      case 1:
        print("Encapsulation");
        Map<int, String> operation_title = {
          1:"deposite",
          2:"withdraw"
        };

        // print menu
        operation_title.forEach((key, value){
          print('($key) -$value');
          
        });
        stdout.write('your choice is: ');
        int operation = int.tryParse(stdin.readLineSync()!) ?? 0;
        switch(operation){
          case 1:
            stdout.write('\nEnter amount of deposite : ');
            double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
            BankAccount.deposite(amount);

          case 2:
            stdout.write('\nEnter amount of withdraw : ');
            double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
            BankAccount.withdraw(amount);

        }

      case 2:
        print("inheritance");
        Map<int, String> operation_title = {
          1:"rectangle",
          2:"triangle"
        };

        // print menu
        operation_title.forEach((key, value){
          print('($key) -$value');
          
        });
        stdout.write('your choice is: ');
        int operation = int.tryParse(stdin.readLineSync()!) ?? 0;
        switch(operation){
          case 1:
            print("RECTANGLE");

            stdout.write('\nLength: ');
            double length = double.tryParse(stdin.readLineSync()!) ?? 0;
            
            stdout.write('\nWidth: ');
            double Width = double.tryParse(stdin.readLineSync()!) ?? 0;
            
            Map<String, double> result = Rectangle().area(length, Width);
            print("the area of rectangle = ${result['area']}cm^2");
            print("diagonal length of rectangle = ~${result['diagoanl']}cm");

          case 2:
            print("TRIANGLE");

            stdout.write('\nBase Length: ');
            double Base = double.tryParse(stdin.readLineSync()!) ?? 0;
            
            stdout.write('\nHeight: ');
            double Height = double.tryParse(stdin.readLineSync()!) ?? 0;
             
            
            Map<String, double> result = Triangle().area(Base, Height);
            print("the area of triangle = ${result['area']}cm^2");

            print("the other side = ${result['otherSide']}cm");




        }



    }

  }


}