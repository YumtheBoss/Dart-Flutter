//lib/cong_nhan.dart

import 'person.dart';

class Personel extends Person{
  
  List<String> positions = ["Truong phong", "Nhan vien"]; //Vị trí công việc
  

  String position; //Vị trí công việc
  String address; //Địa chỉ làm việc
  int salary; //Mức lương

  Personel(this.position, this.address, this.salary, String name, int age, String hometown, int year) : super(name, age, hometown, year);


  @override
  String toString() {
    return 'Họ và tên: $name, Tuổi: $age, Quê quán: $hometown, Năm sinh: $year, Vị trí công việc: $position, Địa chỉ làm việc: $address, Mức lương: $salary';
  }

  static void sort(int Function(dynamic a, dynamic b) param0) {}
}
