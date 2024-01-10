class Plants{

  String plantsName;
  String plantsColor;
  String plantsSize;
  String plantsForm;
  double plantsGrowthRate;

  Plants(this.plantsName , this.plantsColor , this.plantsSize , this.plantsForm , this.plantsGrowthRate);

  String toString(){
    return 'Plants: [$plantsName , $plantsColor , $plantsSize , $plantsForm , $plantsGrowthRate]';
  }

}

class Rose extends Plants{

  bool growInside;
  Rose(String plantsName , String plantsColor , String plantsSize , String plantsForm ,
  double plantsGrowthRate , this.growInside)
  : super(plantsName , plantsColor , plantsSize , plantsForm , plantsGrowthRate);

  void beautiful(){
    print('$plantsName is beautiful!');
  }

}

void main(){

  var rose = Rose('Damask', 'Pink', 'Medium', 'Pinnate', 1.5 , false);
  print(rose);
  rose.beautiful();
  
}