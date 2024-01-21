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

    print('1- name drug: $nameDrug');
    print('2- Action and properties drug: $actionsAndPropertiesDrug');
    print('3- Indications drug: $indicationsDrug');
    print('4- Warnings drug: $warningsDrug');
    print('5- Recommended age: $recommendedAge');
    print('6- Daily dose: $dailyDose');
    
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

    print('__' * 10);
    print('Welcome to our app');
    print('Log in');
    print('1- Admin');
    print('2- User');
    print('3- Exit');

    String adminOrUser = stdin.readLineSync()!;

    int? recommendedAge;
    int? dailyDose;

    if(adminOrUser == '1'){

        while(true){

        String adminName = 'Admin';
        int password = 1234;

        print('__' * 10);
        print('Enter Username');
        String admin = stdin.readLineSync()!;

        print('Enter Password');
        int Pass1 = int.parse(stdin.readLineSync()!);
        
        

        if(admin == adminName && Pass1 == password){

          while(true){

            print('__' * 10);
            print('Hello admin what do you want to do');
            print('1- Show drugs');
            print('2- Add drug');
            print('3- Update or Delete drug');
            print('4- Return to the home page');

            String addOrUpdateOrDelete = stdin.readLineSync()!;

            if(addOrUpdateOrDelete == '1'){
              
              print('__' * 10);
              for(var i = 0 ; i < allDrugs.length ; i++){
              print('This is drug number ${i+1}');
              print('drug name: ${allDrugs[i].nameDrug}');
              }
              
            }

            else if(addOrUpdateOrDelete == '2'){

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
              recommendedAge = null;
              dailyDose = null;
                  
            }

            else if(addOrUpdateOrDelete == '3'){

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

              while(true){

                print('__' * 10);
                print('1- Update drug');
                print('2- Delete drug');
                print('3- Back');

                String updateOrDeleteOrBack = stdin.readLineSync()!;

                if(updateOrDeleteOrBack == '1'){

                  allDrugs[choiceDrug - 1].updateDrugInfo();

                }

                else if(updateOrDeleteOrBack == '2'){

                  while(true){

                    print('__' * 10);
                    print('Do you want to remove drug y/n');

                    String? Delete = stdin.readLineSync();
                    
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
                    }

                  }
                  break;
                }

                else if(updateOrDeleteOrBack == '3'){
                  break;
                }

                else{
                  print('Wrong choice!');
                }
                continue;
              }
            }

            else if(addOrUpdateOrDelete == '4'){
              break;
            }

            else{
              print('Wrong choice!');
            }
           
          }
        }

        else{
          print('Incorrect username or password');
          continue;
        } 
        break;
      }
    }

    else if(adminOrUser == '2'){

      while(true){
        
        String userName = 'Mohammad';
        int password = 1122;

        print('__' * 10);
        print('Enter Username');
        String User = stdin.readLineSync()!;

        print('Enter Password');
        int Pass2 = int.parse(stdin.readLineSync()!);

        if(User == userName && Pass2 == password){

          while(true){

            print('__' * 10);
            print('Hello user');
            print('1- Show all drugs');
            print('2- Back');
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

                while(true){

                  print('__' * 10);
                  print('Do yo want add to cart y/n');

                  String? addOrNO = stdin.readLineSync();

                  if(addOrNO == 'y'){
                    Basket.add(allDrugs[choiceDrug-1]);
                    print('Added to cart');
                    break;
                  }

                  else if(addOrNO == 'n'){
                    break;
                  }

                  else{
                    print('Wrong choice');
                  }
                  continue;
                }

                while(true){

                  print('__' * 10);
                  print('1- Show basket info');
                  print('2- Back');

                  int? showOrBack = int.parse(stdin.readLineSync()!);
                  print('__' * 10);

                  if(showOrBack == 1){
                    for(var i = 0 ; i < Basket.length ; i++){
                      // Basket[i].drugInfo();
                      print('This is drug number ${i+1}');
                      print('drug name: ${Basket[i].nameDrug}');
                    }

                    while(true){
                      
                      print('__' * 10);
                      print('1- Add another drug to the basket');
                      print('2- Remove drug from basket');
                      print('3- Back');

                      String addOrRemoveOrBack = stdin.readLineSync()!;
          
                      if(addOrRemoveOrBack == '1'){

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
                      

                        while(true){

                          print('__' * 10);
                          print('Do yo want add to cart y/n');

                          String? addOrNO = stdin.readLineSync();

                          if(addOrNO == 'y'){
                            Basket.add(allDrugs[choiceDrug-1]);
                            print('Added to cart');
                            break;
                          }

                          else if(addOrNO == 'n'){
                            break;
                          }

                          else{
                            print('Wrong choice');
                          }
                          continue;
                        }
                        break;
                      }

                      else if(addOrRemoveOrBack == '2'){

                        while(true){
                          
                          print('__' * 10);
                          print('Do you want to remove drug y/n');

                          String? remove = stdin.readLineSync();

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

                          else{
                            print('Wrong choice');
                          }
                          continue;
                        }
                        break;
                      }
                      
                      else if(addOrRemoveOrBack == '3'){
                        break;
                      }
                      
                      else{
                      print('Wrong choice');
                      }
                      continue;
                    }
                  }

                  else if(showOrBack == 2){
                    break;
                  }

                  else{
                    print('Wrong choice');
                  }
                }
                continue;
              }

            else if(showOrBack == '2'){
              break;
            }

            else{
              print('Wrong Choice');
            }
            continue;
          }
        }
      
        else{
        print('Incorrect username or password');
        continue;
        }
        break;
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