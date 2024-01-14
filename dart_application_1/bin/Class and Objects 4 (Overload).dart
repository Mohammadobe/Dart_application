abstract class Parent{

  String name;
  String city;
  Parent(this.name , this.city);

  String info();

  String info1(){
    return info1();
  }
  
}

class Child extends Parent{

  int age;
  Child(String name , String city , this.age) : super(name , city);

  String info(){
    return 'Child = $age';
  }

}

class secondChild extends Parent{

  String job;
  secondChild(String name , String city , this.job) : super(name , city);

  String info(){
    return 'Second Child = $job';
  }

}

void main(){

  Child ch1 = Child('Ahmad' , 'Amman' , 8);
  print(ch1.info());
  secondChild ch2 = secondChild('Mohammad', 'Irbid' , 'dev');
  print(ch2.info());

}