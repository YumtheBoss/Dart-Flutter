//lib/student.dart
import 'person.dart';

class Student extends Person{

  String school; //Tên trường học
  String subject; //Ngành học
  String subname; //Tên môn học
  String code; //Mã môn 
  int credits; //Số tín chỉ
  int A; // Điểm A
  int B; //Điểm B 
  int C; //Điểm C

  Student(this.school, this.subject, this.subname, this.code, this.credits, this.A, this.B, this.C, String name, int age, String hometown, int year, String position) : super(name, age, hometown, year, position);

//Ghi đè phương thức của Person.dart
  @override
  String toString(){
    return 'Họ và tên: $name, Tuổi: $age, Quê quán: $hometown, Năm sinh: $year, Tên trường: $school, Ngành học: $subject, Tên môn học: $subname, Số tín chỉ: $credits, Mã môn: $code, Điểm A: $A, Điểm B: $B, Điểm C: $C';
  }
}
