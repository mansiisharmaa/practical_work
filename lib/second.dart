class Student {
  String? _name;
  int? _age;
  double? _marks;

//   Student(String s, int i, double d){
//     this._name = s;
//     this._age = i;
//     this._marks=d;
    
//   } 

   void setName(String name){
       //   String upper = name.toUpperCase();
     //this._name = name;
     //print(name);
     if (name.trim().isNotEmpty){
            _name = name;
         }else{
     //print("Hello");
          print("Error: Enter your name");
       
     }
     }
   
   void setAge(int age){
    if (age <= 5) {
      print(" Error: Age must be greater than 5.");
    } else {
      _age = age;
    }
   }
  void setMarks(double marks){
    if (marks < 0 || marks > 100) {
      print(" Error: Marks must be between 0 and 100.");
    } else {
      _marks = marks;
    }
  }
  
 void display(){
    print("Student Details: $_name , $_age , $_marks");
  }
}
void main() {
//   Student s1 = Student();
//   s1.setName("Mansi");
//   s1.setAge(10);
//   s1.setMarks(60);
  
//   s1.display();
  
   Student s2 = Student();
  s2.setName("");
  s2.setAge(3);
  s2.setMarks(120);
  
 // s2.display();
}