class Employee{
  String? name;
  int? year;
  int? salary;

  Employee({required this.name ,required this.year , required this.salary });

  display(){
    print("\nyour Employee is $name, \nhe was born in $year,\nhis salary is $salary\n");
  }

}
