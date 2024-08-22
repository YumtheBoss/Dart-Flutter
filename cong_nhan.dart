//lib/cong_nhan.dart

import 'person.dart';

class Personel extends Person{
  
  String postion; //Vị trí công việc
  String address; //Địa chỉ làm việc
  int salary; //Mức lương

  Personel(this.postion, this.address, this.salary, String name, int age, String hometown, int year) : super(name, age, hometown, year);


  @override
  String toString() {
    return 'Họ và tên: $name, Tuổi: $age, Quê quán: $hometown, Năm sinh: $year, Vị trí công việc: $postion, Địa chỉ làm việc: $address, Mức lương: $salary';
  }
}