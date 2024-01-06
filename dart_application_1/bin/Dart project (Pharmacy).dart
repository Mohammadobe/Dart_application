import 'dart:io';

class Drugs{

  String? nameDrug;
  String? actionsAndPropertiesDrug;
  String? indicationsDrug;
  String? warningsDrug;
  int? recommendedAge;
  int? dailyDose;

  Drugs(this.nameDrug , this.actionsAndPropertiesDrug , this.indicationsDrug , 
        this.warningsDrug , this.recommendedAge , this.dailyDose);

  void drugInfo(){

    print('name drug: $nameDrug');
    print('Action and properties drug: $actionsAndPropertiesDrug');
    print('Indications drug: $indicationsDrug');
    print('Warnings drug: $warningsDrug');
    print('Recommended age: $recommendedAge');
    print('Daily dose: $dailyDose');
  }

  void updateDrugInfo(){

    print('Update the name druge: $nameDrug');
    nameDrug = stdin.readLineSync();

    print('Update the action and properties drug: $actionsAndPropertiesDrug');
    actionsAndPropertiesDrug = stdin.readLineSync();

    print('Update the indications drug: $indicationsDrug');
    indicationsDrug = stdin.readLineSync();

    print('Update the warnings drug: $warningsDrug');
    warningsDrug = stdin.readLineSync();

    while(true){

      if(recommendedAge == recommendedAge){
        try {
          print('Update the recommended age: $recommendedAge');
          recommendedAge = int.parse(stdin.readLineSync()!);
        } 
        catch (e) {
          print('enter a valid value');
          continue;
        }
      }

      if(dailyDose == dailyDose){
        try {
          print('Update the daily dose: $dailyDose');
          dailyDose = int.parse(stdin.readLineSync()!);
        } 
        catch (e) {
          print('enter a valid value');
          continue;
        }
      }
    break;
    }
    drugInfo();
  }
}

void main(){
  
  List Basket = [];

  while(true){

    int? recommendedAge;
    int? dailyDose;
    
    print('__' * 10);
    print('Welcome to our app');
    print('1- Create a new drug');
    print('2- Show all drugs');
    print('3- Exit');
    print('enter your choice');
    int? Choice = int.parse(stdin.readLineSync()!);

    if(Choice == 1){

      print('__' * 10);
      print('enter the name druge');
      String? nameDrug = stdin.readLineSync();

      print('enter the action and properties drug');
      String? actionsAndPropertiesDrug = stdin.readLineSync();

      print('enter the indications drug');
      String? indicationsDrug = stdin.readLineSync();

      print('enter the warnings drug');
      String? warningsDrug = stdin.readLineSync();

      while(true){

        if(recommendedAge == null){
          try {
            print('enter the recommended age');
            recommendedAge = int.parse(stdin.readLineSync()!);
          } 
          catch (e) {
            print('enter a valid value');
            continue;
          }
        }

        if(dailyDose == null){
          try {
            print('enter the daily dose');
            dailyDose = int.parse(stdin.readLineSync()!);
          } 
          catch (e) {
            print('enter a valid value');
            continue;
          }
        }
      break;
      }
      Drugs pharmacy = Drugs(nameDrug , actionsAndPropertiesDrug , indicationsDrug , 
      warningsDrug , recommendedAge , dailyDose);
      pharmacy.drugInfo();
      Basket.add(pharmacy);
    }

    else if(Choice == 2){
      for(var i = 0 ; i < Basket.length ; i++){
        print('__' * 10);
        print('This is drug number ${i+1}');
        print('drug name: ${Basket[i].nameDrug}');
      }

      print('__' * 10);
      print('Choice the drug number to display his information');
      int? choiceDrug;

      while(true){

        try {
          print('enter a valid index');
          choiceDrug = int.parse(stdin.readLineSync()!);
          if(choiceDrug > Basket.length){
            print('enter a valid index');
            choiceDrug = int.parse(stdin.readLineSync()!);
          }

          else{
            break;
          }
          
        } 
        catch (e) {
          print('Wrong number!');
        }
      }
      print('__' * 10);
      print('This is the drug info');
      Basket[choiceDrug - 1].drugInfo();

      print('__' * 10);
      print('1- Update drug info');
      print('2- Add to cart');
      print('3- Delete drug');

      int? updateOrAddOrRemove = int.parse(stdin.readLineSync()!);
      if(updateOrAddOrRemove == 1){
        Basket[choiceDrug - 1].updateDrugInfo();
      }

      else if(updateOrAddOrRemove == 2){
        print('__' * 10);
        for(var i = 0 ; i <Basket.length ; i++){
        Basket[i].drugInfo();
        print('(Drug added to cart)');
        }
      }
      
      else if(updateOrAddOrRemove == 3){
        print('__' * 10);
        print('Do you want to remove this drug y/n');
        String? remove = stdin.readLineSync();
        while(true){
          if(remove == 'y'){
            Basket.removeAt(choiceDrug - 1);
            print('__' * 10);
            print('Drug removed');
            break;
          }

          else if(remove == 'n'){
            break;
          }
        }
      }
    }

    else if(Choice == 3){
      print('See you ^_^');
      break;
    }

    else{
      print('Wrong choice please try again!');
    }
  }
}