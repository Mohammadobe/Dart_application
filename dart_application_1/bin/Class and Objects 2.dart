import 'dart:io';

class Cars {

  String color;
  String companyName;
  int yearOfManufacture;
  double? sellPrice;
  String engineType;
  int passengerCapacity;
  String fuelType;
  int numberOfSeats;
  int _productionPrice;

  Cars(this.color , this.companyName , this.yearOfManufacture , this.engineType,
  this.passengerCapacity , this.fuelType , this.numberOfSeats , this._productionPrice){

  sellPrice = (0.2 * _productionPrice) + _productionPrice;

  }

  void getPrice(){

    print('Production price is : $_productionPrice');
    sellPrice = (0.2 * _productionPrice) + _productionPrice;
    print('Sell price is : $sellPrice');

  }

  int? newProductionPrice;
  void insertProductionPrice(){
    print('enter new production price');
    newProductionPrice = int.parse(stdin.readLineSync()!);
    _productionPrice = newProductionPrice!;
    print('New production price: $_productionPrice');
  }
}