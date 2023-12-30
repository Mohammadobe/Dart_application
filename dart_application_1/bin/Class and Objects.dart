void main(){

  cars().carInfo();

}

class cars{

  String brand = 'BMW';
  String model = 'M5 Cs';
  int year = 2020;
  String color = 'Black';

  void carInfo(){

    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('Color: $color');

  } 

}