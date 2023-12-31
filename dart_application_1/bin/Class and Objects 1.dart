class intro{

  String? name;
  intro(this.name);

  String callName(){

    return 'This is name from class $name';
  }
}

void main(){

  String studentName = 'Sami';
  String teacherName = 'Ali';
  intro obj1 = intro(studentName);
  intro obj2 = intro(teacherName);
  print(obj1.callName());

}