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

    print('update the drug info ');
    print('Update the name druge: $nameDrug');
    var nameDrug1 = stdin.readLineSync();
    if(nameDrug1 == ''){
      nameDrug = nameDrug;
      print('this is name drug ($nameDrug)');
    }

    else{
      nameDrug = nameDrug1;
      print('this is name drug ($nameDrug)');
    }

    print('Update the action and properties drug: $actionsAndPropertiesDrug');
    var actionsAndPropertiesDrug1 = stdin.readLineSync();
    if(actionsAndPropertiesDrug1 == ''){
      actionsAndPropertiesDrug = actionsAndPropertiesDrug;
      print('this is action and properties drug ($actionsAndPropertiesDrug)');
    }

    else{
      actionsAndPropertiesDrug = actionsAndPropertiesDrug1;
      print('this is action and properties drug ($actionsAndPropertiesDrug)');
    }

    print('Update the indications drug: $indicationsDrug');
    var indicationsDrug1 = stdin.readLineSync();
    if(indicationsDrug1 == ''){
      indicationsDrug = indicationsDrug;
      print('this is indications drug ($indicationsDrug)');
    }

    else{
      indicationsDrug = indicationsDrug1;
      print('this is indications drug ($indicationsDrug)');
    }

    print('Update the warnings drug: $warningsDrug');
    var warningsDrug1 = stdin.readLineSync();
    if(warningsDrug1 == ''){
      warningsDrug = warningsDrug;
      print('this is warnings drug ($warningsDrug)');
    }

    else{
      warningsDrug = warningsDrug1;
      print('this is warnings drug ($warningsDrug)');
    }

    var recommendedAge1;
    var dailyDose1;

    while(true){
      
      if(recommendedAge != recommendedAge1){
        try {
          print('Update the recommended age: $recommendedAge');
          recommendedAge1 = stdin.readLineSync();
          if(recommendedAge1 == ''){
            recommendedAge = recommendedAge;
            recommendedAge1 = recommendedAge;
            print('this is recommended age ($recommendedAge)');
          }

          else{
            recommendedAge = int.parse(recommendedAge1);
            print('this is recommended age ($recommendedAge)');
          }
        }
         
        catch (e) {
          print('enter a valid value');
          continue;
        }
      }

      if(dailyDose != dailyDose1){
        try {
          print('Update the daily dose: $dailyDose');
          dailyDose1 = stdin.readLineSync();
          if(dailyDose1 == ''){
            dailyDose = dailyDose;
            dailyDose1 = dailyDose;
            print('this is daily dose ($dailyDose)');
          }

          else{
            dailyDose = int.parse(dailyDose1);
            print('this is daily dose ($dailyDose)');
          }
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
  List allDrugs = [];

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
      allDrugs.add(pharmacy);
    }

    else if(Choice == 2){
      for(var i = 0 ; i < allDrugs.length ; i++){
        print('__' * 10);
        print('This is drug number ${i+1}');
        print('drug name: ${allDrugs[i].nameDrug}');
      }

      print('__' * 10);
      print('Choice the drug number to display his information');
      int? choiceDrug;

      while(true){

        try {
          print('enter a valid index');
          choiceDrug = int.parse(stdin.readLineSync()!);
          if(choiceDrug > allDrugs.length){
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
      allDrugs[choiceDrug - 1].drugInfo();

      print('__' * 10);
      print('Do yo want add to cart');
      String? addOrNO = stdin.readLineSync();
      if(addOrNO == 'y'){
        //int? choicedrug = int.parse(stdin.readLineSync()!);
        Basket.add(allDrugs[choiceDrug-1]);
        print('Added to cart');
      }

      else if(addOrNO == 'n'){
        break;
      }

      print('__' * 10);
      print('1- show basket info');
      print('2- Delete drug');

      int? updateOrAddOrRemove = int.parse(stdin.readLineSync()!);
      print('__' * 10);

      if(updateOrAddOrRemove == 1){
        for(var i = 0 ; i < Basket.length ; i++)
        {
          Basket[i].drugInfo();
        }
      }

      else if(updateOrAddOrRemove == 2){
        print('__' * 10);
        print('Do you want to remove drug y/n');
        String? remove = stdin.readLineSync();
        while(true){
          if(remove == 'y'){
            for(var i = 0 ; i < Basket.length ; i++){
              Basket[i].drugInfo();
            }
            print('select number of druge to remove');

            int? removeChoice =int.parse(stdin.readLineSync()!);
            Basket.removeAt(removeChoice - 1);
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