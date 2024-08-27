//lib/cong_nhan.dart

import 'person.dart';

class Personel extends Person{
  

  
  String address; //Địa chỉ làm việc
  int salary; //Mức lương

  Personel( this.address, this.salary, String name, int age, String hometown, int year, String position) : super(name, age, hometown, year, position);


  @override
  String toString() {
    '$name - $position';
    return 'Họ và tên: $name, Tuổi: $age, Quê quán: $hometown, Năm sinh: $year, Vị trí công việc: $position, Địa chỉ làm việc: $address, Mức lương: $salary';
  }

  static void sort(int Function(dynamic a, dynamic b) param0) {}


}
