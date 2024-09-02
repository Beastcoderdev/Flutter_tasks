import 'dart:math';

class Shape{
  
  double diogonal_1 = 0;
  double diogonal_2 = 0;
}

class Rectangle extends Shape{
  
  Map<String, double> area(double L, double W){
    double area = L * W;
    double diagonal = sqrt(L * L + W * W);

    double diagoanl_l = double.tryParse(diagonal.toStringAsFixed(2)) ?? 0; 

    // return [area, diagonal];
    
    return {'area': area, 'diagoanl': diagoanl_l};
    
  }


}

class Triangle extends Shape{
  Map<String, double> area(double H, double B){
    double area = (H * B)/2;

    // we can use Heron's Formula to get the area even throught unequal sides. Ex: a scalen triangle
    // but I use pythegorath therom because we don't want to make it complex
    
    double otherSide = sqrt(pow(H, 2) + pow(B, 2));  // sqrt()  --> root, // pow(object, value) -> increase the number of by 'value' 
    // in this case ^2


    // return [area, diagonal];
    return {'area': area, 'otherSide': otherSide};
  }

}