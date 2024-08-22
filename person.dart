//lib/person.dart

import 'package:person_management/cong_nhan.dart';

class Person{

  String name; //Họ và tên
  int age; //Tuổi
  String hometown; //Quê quán
  int year; //Năm sinh

  Person(this.name, this.age, this.hometown, this.year);

  @override
  String toString(){
    return 'Họ và tên: $name, Tuổi: $age, Quê quán: $hometown, Năm sinh: $year';
  }

  static void add(Personel personel) {}
}