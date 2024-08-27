//lib/person.dart

import 'package:person_management/cong_nhan.dart';

class Person{

  String name; //Họ và tên
  int age; //Tuổi
  String hometown; //Quê quán
  int year; //Năm sinh
  String position; //Vị trí công việc

  Person(this.name, this.age, this.hometown, this.year, this.position);



  @override
  String toString(){
    return 'Họ và tên: $name, Tuổi: $age, Quê quán: $hometown, Năm sinh: $year';
  }

  static void add(Personel personel) {}

  static void sort(Function(dynamic a, dynamic b) param0) {}

  
}
