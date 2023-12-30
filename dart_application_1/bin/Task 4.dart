void main(){

  footballPlayers().informationPlayer();

}

class footballPlayers{

  String namePlayer = 'Toni Kroos';
  String nationalityPlayer = 'Germany';
  String bornPlayer = '4 / January / 1990';
  double tallPlayer = 1.83;
  String clubPlayer = 'Real Madrid';

  void informationPlayer(){

    print('Name Player: $namePlayer');
    print('Nationality Player: $nationalityPlayer');
    print('Born player: $bornPlayer');
    print('Tall Player: $tallPlayer');
    print('Club Player: $clubPlayer');

  }

}