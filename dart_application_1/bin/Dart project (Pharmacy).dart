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

class diabetesDrug extends Drugs{

  String nameDiabetesDrug;
  diabetesDrug(String nameDrug , String actionsAndPropertiesDrug , String indicationsDrug , String warningsDrug ,
               int recommendedAge , int dailyDose , this.nameDiabetesDrug) : super(nameDrug , actionsAndPropertiesDrug ,
               indicationsDrug , warningsDrug , recommendedAge , dailyDose);

  String info(){
    return 'Diabetes drug: $nameDrug , $actionsAndPropertiesDrug , $indicationsDrug , $warningsDrug , $recommendedAge , $dailyDose , $nameDiabetesDrug';
  }
  
}

class bloodPressureDrug extends Drugs{

  String nameBloodPressureDrug;
  bloodPressureDrug(String nameDrug , String actionsAndPropertiesDrug , String indicationsDrug , String warningsDrug ,
                    int recommendedAge , int dailyDose , this.nameBloodPressureDrug) : super(nameDrug , actionsAndPropertiesDrug ,
                    indicationsDrug , warningsDrug , recommendedAge , dailyDose);

  String info(){
    return 'Blood pressure drug: $nameDrug , $actionsAndPropertiesDrug , $indicationsDrug , $warningsDrug , $recommendedAge , $dailyDose , $nameBloodPressureDrug';
  }

}

void main(){
  
  diabetesDrug diabetes = diabetesDrug('t', 't', 't', 't', 5 , 5 , 't');
  bloodPressureDrug bloodPressure = bloodPressureDrug('b', 'b', 'b', 'b', 6 , 6 , 'b');
  Drugs d1 = Drugs('q' , 'q' , 'q' , 'q' , 1 , 1);
  Drugs d2 = Drugs('m' , 'm' , 'm' , 'm' , 2 , 2);
  List Basket = [];
  List allDrugs = [diabetes , bloodPressure , d1 , d2];

  while(true){

    print('Welcome to our app');
    print('Log in');
    print('1- Admin');
    print('2- User');
    print('3- Exit');

    String adminOrUser = stdin.readLineSync()!;

    int? recommendedAge;
    int? dailyDose;

    if(adminOrUser == '1'){

      String adminName = 'Admin';
      int password = 1234;

      print('__' * 10);
      print('Enter Username');
      String admin = stdin.readLineSync()!;

      print('Enter Password');
      int Pass1 = int.parse(stdin.readLineSync()!);
      
      while(true){

        if(admin == adminName && Pass1 == password){
      
          print('__' * 10);
          print('Hello admin what do you want to do');
          print('1- Add drug');
          print('2- Update or Delete drug');
          print('3- Return to the home page');

          String addOrUpdateOrDelete = stdin.readLineSync()!;

          if(addOrUpdateOrDelete == '1'){

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

          else if(addOrUpdateOrDelete == '2'){

            for(var i = 0 ; i < allDrugs.length ; i++){
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
            print('1- Update drug');
            print('2- Delete drug');

            String updateOrDelete = stdin.readLineSync()!;

            while(true){

              if(updateOrDelete == '1'){

                allDrugs[choiceDrug - 1].updateDrugInfo();

              }

              else if(updateOrDelete == '2'){

                print('__' * 10);
                print('Do you want to remove drug y/n');

                String? Delete = stdin.readLineSync();

                while(true){

                  if(Delete == 'y'){
                
                    allDrugs.removeAt(choiceDrug - 1);
                    print('__' * 10);
                    print('Drug removed');
                    break;

                  }

                  else if(Delete == 'n'){
                    break;
                  }

                  else{
                    print('enter a valid value');
                    break;
                  }

                }
              }

              else{
                print('Wrong choice!');
              }
              break;
            }
          }

          else if(addOrUpdateOrDelete == '3'){
            break;
          }

          else{
            print('Wrong choice!');
          }
        
        }

        else{
          print('Incorrect username or password');
        } 
break;
      }
    }

    else if(adminOrUser == '2'){

      String userName = 'Mohammad';
      int password = 1122;

      print('__' * 10);
      print('Enter Username');
      String User = stdin.readLineSync()!;

      print('Enter Password');
      int Pass2 = int.parse(stdin.readLineSync()!);

      if(User == userName && Pass2 == password){

        print('__' * 10);
        print('Hello user');
        print('1- Show all drugs');
        print('2- Back');

        while(true){

          String showOrBack = stdin.readLineSync()!;

          if(showOrBack == '1'){

            for(var i = 0 ; i < allDrugs.length ; i++){
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
              print('Do yo want add to cart y/n');

              String? addOrNO = stdin.readLineSync();

              if(addOrNO == 'y'){
                Basket.add(allDrugs[choiceDrug-1]);
                print('Added to cart');
              }

              else if(addOrNO == 'n'){
                break;
              }

              while(true){

                print('__' * 10);
                print('1- Show basket info');
                print('2- Exit');

                int? showOrExit = int.parse(stdin.readLineSync()!);
                print('__' * 10);

                if(showOrExit == 1){
                  for(var i = 0 ; i < Basket.length ; i++){
                    // Basket[i].drugInfo();
                    print('This is drug number ${i+1}');
                    print('drug name: ${Basket[i].nameDrug}');
                  }

                  print('__' * 10);
                  print('Do you want to remove drug y/n');

                  String? remove = stdin.readLineSync();

                  while(true){

                    if(remove == 'y'){
                    for(var i = 0 ; i < Basket.length ; i++){
                      //Basket[i].drugInfo();
                      print('This is drug number ${i+1}');
                      print('drug name: ${Basket[i].nameDrug}');
                    }

                    print('select number of druge to remove');

                    int? removeChoice =int.parse(stdin.readLineSync()!);

                    Basket.removeAt(removeChoice - 1);
                    print('__' * 10);
                    print('Drug removed');

                    print('__' * 10);
                    print('These are the contents of the basket');
                    for(var i = 0 ; i < Basket.length ; i++){
                    // Basket[i].drugInfo();
                      print('This is drug number ${i+1}');
                      print('drug name: ${Basket[i].nameDrug}');
                    }
                    break;
                  }

                  else if(remove == 'n'){
                    break;
                  }

                }
              }
              break;
            }
          }

          else if(showOrBack == '2'){
            break;
          }

          else{
            print('Wrong Choice');
            break;
          }

        }
      }
    
      else{
      print('Incorrect username or password');
      }

    }
  
    else if(adminOrUser == '3'){
      print('Good by');
      break;
    }
      
    else{
      print('Please a valid value');
    }

  }
}