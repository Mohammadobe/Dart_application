import 'dart:io';

class Drugs{

  String? nameDrug;
  String? actionsAndPropertiesDrug;
  String? indicationsDrug;
  String? warningsDrug;
  int? recommendedAge;
  int? dailyDose;
  double? sellPrice;

  Drugs(this.nameDrug , this.actionsAndPropertiesDrug , this.indicationsDrug , 
        this.warningsDrug , this.recommendedAge , this.dailyDose , this.sellPrice);

  void drugInfo(){

    print('1- name drug: $nameDrug');
    print('2- Action and properties drug: $actionsAndPropertiesDrug');
    print('3- Indications drug: $indicationsDrug');
    print('4- Warnings drug: $warningsDrug');
    print('5- Recommended age: $recommendedAge');
    print('6- Daily dose: $dailyDose');
    print('7- Sell price: $sellPrice');
    
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
    var sellPrice1;

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

      if(sellPrice != sellPrice1){
        try {
          print('Update the sell price: $sellPrice');
          sellPrice1 = stdin.readLineSync()!;
          if(sellPrice1 == ''){
            sellPrice = sellPrice;
            sellPrice1 = sellPrice;
            print('this is sell price ($sellPrice)');
          }

          else{
            sellPrice = double.parse(sellPrice1);
            print('this is daily dose ($sellPrice)');
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
               int recommendedAge , int dailyDose , double sellPrice , this.nameDiabetesDrug) : super(nameDrug , actionsAndPropertiesDrug ,
               indicationsDrug , warningsDrug , recommendedAge , dailyDose , sellPrice);

  String info(){
    return 'Diabetes drug: $nameDrug , $actionsAndPropertiesDrug , $indicationsDrug , $warningsDrug , $recommendedAge , $dailyDose , $nameDiabetesDrug , $sellPrice';
  }
  
}

class bloodPressureDrug extends Drugs{

  String nameBloodPressureDrug;
  bloodPressureDrug(String nameDrug , String actionsAndPropertiesDrug , String indicationsDrug , String warningsDrug ,
                    int recommendedAge , int dailyDose , double sellPrice , this.nameBloodPressureDrug) : super(nameDrug , actionsAndPropertiesDrug ,
                    indicationsDrug , warningsDrug , recommendedAge , dailyDose , sellPrice);

  String info(){
    return 'Blood pressure drug: $nameDrug , $actionsAndPropertiesDrug , $indicationsDrug , $warningsDrug , $recommendedAge , $dailyDose , $nameBloodPressureDrug , $sellPrice';
  }

}

void main(){
  
  diabetesDrug diabetes = diabetesDrug('t', 't', 't', 't', 5 , 5 , 4.5 , 't');
  bloodPressureDrug bloodPressure = bloodPressureDrug('b', 'b', 'b', 'b', 6 , 6 , 5.49 , 'b');
  Drugs d1 = Drugs('q' , 'q' , 'q' , 'q' , 1 , 1 , 20);
  Drugs d2 = Drugs('m' , 'm' , 'm' , 'm' , 2 , 2 , 15.4);
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
    double? sellPrice;

    if(adminOrUser == '1'){

        while(true){

        String adminName = 'Admin';
        String password = '1234';

        print('__' * 10);
        print('Enter Username');
        String admin = stdin.readLineSync()!;

        print('Enter Password');
        String Pass1 = stdin.readLineSync()!;
        
        

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

                if(sellPrice == null){
                  try {
                    print('enter the sell price');
                    sellPrice = double.parse(stdin.readLineSync()!);
                  }

                  catch (e) {
                    print('enter a valid value');
                    continue;
                  }
                }
                break;
              }

              Drugs pharmacy = Drugs(nameDrug , actionsAndPropertiesDrug , indicationsDrug , 
              warningsDrug , recommendedAge , dailyDose , sellPrice);
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
        
        print('__' * 10);
        print('1- Create account');
        print('2- Log in');
        print('3- Back');

        String createOrLogOrback = stdin.readLineSync()!;
        
        if(createOrLogOrback == '1'){

          print('__' * 10);
          print('Sign Up');

          print('Enetr name:');
          String name = stdin.readLineSync()!;

          while(true){
            
            print('Enetr name:');
            String name = stdin.readLineSync()!;
            
            if(name.length <= 8){
              print(name);
            }

            else{
              print('The name is longer than required. Enter a valid value');
              continue;
            }
            break;

          }

          print('Enter password:');
          String password = stdin.readLineSync()!;

          print('Enter email:');
          String email = stdin.readLineSync()!;

          print('Account created');
          
          while(true){
            
            print('__' * 10);
            print('Log in');

            print('Enter username');
            String name1 = stdin.readLineSync()!;

            print('Enter password');
            String password1 = stdin.readLineSync()!;

            if(name1 == name && password1 == password){

              while(true){

                print('__' * 10);
                print('Hello $name');
                print('1- Show all drugs');
                print('2- Send a note or consult');
                print('3- Back');
                String showOrSendOrBack = stdin.readLineSync()!;

                if(showOrSendOrBack == '1'){

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
                        
                        print('__' * 10);
                        print('These are the contents of the basket');

                        var total = 0.0;
                        for(var i = 0 ; i < Basket.length ; i++){
                          print('This is drug number ${i+1}');
                          print('drug name: ${Basket[i].nameDrug}');
                          total =  total + Basket[i].sellPrice;
                        }
                        print('Total drug prices: $total');
                        break;
                      }

                      else if(addOrNO == 'n'){
                        print('__' * 10);
                        print('These are the contents of the basket');

                        var total = 0.0;
                        for(var i = 0 ; i < Basket.length ; i++){
                          print('This is drug number ${i+1}');
                          total =  total + Basket[i].sellPrice;
                        }
                        print('Total drug prices: $total');
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

                                print('__' * 10);
                                print('These are the contents of the basket');

                                var total = 0.0;
                                for(var i = 0 ; i < Basket.length ; i++){
                                  print('This is drug number ${i+1}');
                                  print('drug name: ${Basket[i].nameDrug}');
                                  total =  total + Basket[i].sellPrice;
                                }
                                print('Total drug prices: $total');
                                break;
                              }

                              else if(addOrNO == 'n'){
                                print('__' * 10);
                                print('These are the contents of the basket');

                                var total = 0.0;
                                for(var i = 0 ; i < Basket.length ; i++){
                                  print('This is drug number ${i+1}');
                                  total =  total + Basket[i].sellPrice;
                                }
                                print('Total drug prices: $total');
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
                                  print('This is drug number ${i+1}');
                                  print('drug name: ${Basket[i].nameDrug}');
                                }
                                break;
                              }

                              else if(remove == 'n'){
                                print('__' * 10);
                                print('These are the contents of the basket');
                                for(var i = 0 ; i < Basket.length ; i++){
                                  print('This is drug number ${i+1}');
                                  print('drug name: ${Basket[i].nameDrug}');
                                }
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

                else if(showOrSendOrBack == '2'){
                  print('__' * 10);
                  print('Enter your note or consultation:');
                  String commentOrConsult = stdin.readLineSync()!;
                  print('Your note has been sent. Thank you $name');
                }

                else if(showOrSendOrBack == '3'){
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

        else if(createOrLogOrback == '2'){
          
          while(true){

            String userName = 'Mohammad';
            String password = '1122';

            print('__' * 10);
            print('Enter Username');
            String User = stdin.readLineSync()!;

            print('Enter Password');
            String Pass2 = stdin.readLineSync()!;

            if(User == userName && Pass2 == password){

              while(true){

                print('__' * 10);
                print('Hello $userName');
                print('1- Show all drugs');
                print('2- Send a note or consult');
                print('3- Back');
                String showOrSendOrBack = stdin.readLineSync()!;

                if(showOrSendOrBack == '1'){

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

                        print('__' * 10);
                        print('These are the contents of the basket');

                        var total = 0.0;
                        for(var i = 0 ; i < Basket.length ; i++){
                          print('This is drug number ${i+1}');
                          print('drug name: ${Basket[i].nameDrug}');
                          total =  total + Basket[i].sellPrice;
                        }
                        print('Total drug prices: $total');
                        break;
                      }

                      else if(addOrNO == 'n'){
                        print('__' * 10);
                        print('These are the contents of the basket');

                        var total = 0.0;
                        for(var i = 0 ; i < Basket.length ; i++){
                          print('This is drug number ${i+1}');
                          total =  total + Basket[i].sellPrice;
                        }
                        print('Total drug prices: $total');
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

                                print('__' * 10);
                                print('These are the contents of the basket');

                                var total = 0.0;
                                for(var i = 0 ; i < Basket.length ; i++){
                                  print('This is drug number ${i+1}');
                                  print('drug name: ${Basket[i].nameDrug}');
                                  total =  total + Basket[i].sellPrice;
                                }
                                print('Total drug prices: $total');
                                break;
                              }

                              else if(addOrNO == 'n'){
                                print('__' * 10);
                                print('These are the contents of the basket');

                                var total = 0.0;
                                for(var i = 0 ; i < Basket.length ; i++){
                                  print('This is drug number ${i+1}');
                                  total =  total + Basket[i].sellPrice;
                                }
                                print('Total drug prices: $total');
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
                                  print('This is drug number ${i+1}');
                                  print('drug name: ${Basket[i].nameDrug}');
                                }
                                break;
                              }

                              else if(remove == 'n'){
                                print('__' * 10);
                                print('These are the contents of the basket');
                                for(var i = 0 ; i < Basket.length ; i++){
                                  print('This is drug number ${i+1}');
                                  print('drug name: ${Basket[i].nameDrug}');
                                }
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
                
                else if(showOrSendOrBack == '2'){
                  print('__' * 10);
                  print('Enter your note or consultation:');
                  String commentOrConsult = stdin.readLineSync()!;
                  print('Your note has been sent. Thank you $userName');
                }

                else if(showOrSendOrBack == '3'){
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

        else if(createOrLogOrback == '3'){
          break;
        }

        else{
          print('Wrong choice');
        }
        continue;
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