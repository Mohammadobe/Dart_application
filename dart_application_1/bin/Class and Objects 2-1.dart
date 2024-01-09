import 'dart:io';
import 'Class and Objects 2.dart';

void main(){

  Cars car1 = Cars ('Red' , 'Toyota' , 2010 , 'Pet' , 4 , 'Petrol' , 4 , 8000);
  Cars car2 = Cars ('Blue' , 'Honda' , 2010 , 'Pet' , 4 , 'Petrol' , 4 , 7500);

  car1.getPrice();
  print('_' * 10);
  car2.getPrice();
  print('_' * 10);
  car1.insertProductionPrice();
  print('_' * 10);
  car1.getPrice();
}