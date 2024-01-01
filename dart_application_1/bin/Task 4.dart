import 'dart:io';
void main(){

  String? namePlayer;
  String? nationalityPlayer;
  String? bornPlayer;
  double? tallPlayer;
  String? clubPlayer;

  print('enter name player:');
  namePlayer = stdin.readLineSync();

  print('enter nationality player:');
  nationalityPlayer = stdin.readLineSync();

  print('enter born player:');
  bornPlayer = stdin.readLineSync();

  print('enter club player:');
  clubPlayer = stdin.readLineSync();

  while(true){
    if(tallPlayer == null){
      try{
      print('enter tall player:');
      tallPlayer = double.parse(stdin.readLineSync()!);
      }
      catch (e){
        print('enter a valid tall');
        continue;
        }
      }
    break;
  }
  footballPlayers info = footballPlayers(namePlayer, nationalityPlayer, bornPlayer, tallPlayer, clubPlayer);
  info.informationPlayer();
}

class footballPlayers{

  String? namePlayer;
  String? nationalityPlayer;
  String? bornPlayer;
  double? tallPlayer;
  String? clubPlayer;

  footballPlayers(this.namePlayer , this.nationalityPlayer , this.bornPlayer , this.tallPlayer , this.clubPlayer);

  void informationPlayer(){

    print('Name Player: $namePlayer');
    print('Nationality Player: $nationalityPlayer');
    print('Born player: $bornPlayer');
    print('Tall Player: $tallPlayer');
    print('Club Player: $clubPlayer');

  }
}