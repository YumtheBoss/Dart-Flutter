import 'dart:io';
import 'package:person_management/person.dart';
import 'package:person_management/student.dart';
import 'package:person_management/cong_nhan.dart';

class PersonManagement{

  List<Person> person = [];
  
void addInfo(){

  int type;
  
 do{
  stdout.write('Hãy nhập thông tin (1. Công nhân: , 2. Sinh viên: )'); //Xác định xem thông tin nhập từ bàn phím là của mảng nào.
   type = int.parse(stdin.readLineSync()!);

  if( type < 1 || type > 2){
    print('Xin hãy nhập lại giá trị hợp lệ (1. Công nhân, 2.Sinh viên)');
  }
 }while( type < 1 || type > 2);

  stdout.write('Hãy nhập họ và tên: ');
  String name = stdin.readLineSync()!;

  stdout.write('Hãy nhập tuổi: ');
  int age = int.parse(stdin.readLineSync()!);
  
  stdout.write("Hãy nhập quê quán; ");
  String hometown = stdin.readLineSync()!;

  stdout.write('Hãy nhập năm sinh: ');
  int year = int.parse(stdin.readLineSync()!);



//Phân loại thông tin từ bàn phím để xác định xem đối tượng thuộc loại 1 (Công nhân ) hay 2 (Sinh viên).
  if( type == 1){
    
   String position = '';

    while (position != 'Truong phong' && position != 'Nhan vien') {
        stdout.write('Hãy nhập vị trí công việc: ');
        position = stdin.readLineSync()?.trim() ?? '';

        if (position != 'Truong phong' && position != 'Nhan vien') {
            print('Thông tin về chức vụ hiện không tồn tại, xin hãy nhập lại');
        }
    }

    stdout.write('Hãy nhập địa chỉ làm việc: ');
    String address = stdin.readLineSync()!;

    stdout.write('Hãy nhập mức lương: ');
    int salary = int.parse(stdin.readLineSync()!);
    person.add(Personel(position, address, salary, name, age, hometown, year)); //Thêm thông tin vào trong công nhân.
  }else{
    stdout.write('Hãy nhập tên trường: ');
    String school = stdin.readLineSync()!;

    stdout.write('Hãy nhập ngành học: ');
    String subject = stdin.readLineSync()!;

    stdout.write('Hãy nhập tên môn học: ');
    String subname = stdin.readLineSync()!;

    stdout.write('Hãy nhập mã môn học: ');
    String code = stdin.readLineSync()!;

    stdout.write('Hãy nhập số tín chỉ: ');
    int credits = int.parse(stdin.readLineSync()!);

    stdout.write('Hãy nhập điểm A: ');
    int A = int.parse(stdin.readLineSync()!);

    stdout.write('Hãy nhập điểm B: ');
    int B = int.parse(stdin.readLineSync()!);

    stdout.write('Hãy nhập điểm C: ');
    int C = int.parse(stdin.readLineSync()!);

    person.add(Student(school, subject, subname, code, credits, A, B, C, name, age, hometown, year)); //Thêm thông tin về sinh viên.
  }

  print('Đã thêm thông tin thành công\n');

}

//Xóa thông tin đã nhập
  void removeInfo(){

    stdout.write('Hãy nhập họ và tên người muốn xóa khỏi danh sách: ');
    String name = stdin.readLineSync()!;

    person.removeWhere((person) => person.name == name);
    print('Đã xóa thành công thông tin: $name');
  }

//Hiển thị danh sách 
  void displayInfo(){

    if(person.isEmpty){
      print('Danh sách hiện tại chưa có ai ');
    }else{
      for (var persons in person){
        print(persons);
      }
    }
  }

//Chỉnh sửa thông tin đã nhập 
void editInfo(){
  stdout.write('Hãy nhập họ và tên người muốn thay đổi thông tin: ');
  String name = stdin.readLineSync()!;

  
  for(var persons in person){
//Sửa tên đã nhập trước đấy 
    if(persons.name == name ){
      stdout.write('Hãy nhập tên mới: ');
      String newname = stdin.readLineSync()!;
      if(newname.isNotEmpty){
        persons.name = newname;
      }

//Sửa tuổi đã nhập trước đấy 
      stdout.write('Hãy nhập tuổi mới: ');
      int newage = int.parse(stdin.readLineSync()!);
      persons.age = newage; 

    }

//Thay đổi thông tin của công nhân
    if(persons is Personel){
      stdout.write('Hãy nhập chức vụ mới: ');
      String newposition = stdin.readLineSync()!;
      persons.position = newposition;

      stdout.write('Hãy nhập địa chỉ làm việc mới: ');
      String newaddress = stdin.readLineSync()!;
      persons.address = newaddress;

      stdout.write('Hãy nhập mức lương mới: ');
      int newsalary = int.parse(stdin.readLineSync()!);
      persons.salary = newsalary;
    }

//Sửa thông tin sinh viên 
    if(persons is Student){
      stdout.write('Hãy nhập tên trường mới: ');
      String newschool = stdin.readLineSync()!;
      persons.school = newschool;

      stdout.write('Hãy nhập môn học mới: ');
      String newsubject = stdin.readLineSync()!;
      persons.subject = newsubject;

}
  }

  print('Đã sửa thông tin thành công\n');
}


//Sắp xếp thông tin đã nhập 
void arrangeInfo(List<String> positions){
  stdout.write('Hãy chọn cách mảng thông tin bạn muốn sắp xếp (1. Công nhân, 2. Sinh viên): ');
  int type = int.parse(stdin.readLineSync()!);
  
  stdout.write('Hãy chọn cách sắp xếp mong muốn (\n1. Theo tên\n2. Theo tuổi\n3. Theo chức vụ\n)');
  int option = int.parse(stdin.readLineSync()!);
  
  switch(type){
    case 1: //Sắp xếp theo tên.
      if(option == 1){
        person.sort((a,b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
        print('Danh sách đã được sắp xếp theo tên\n');
        break;
      }

    case 2: //Sắp xếp theo tuổi
      if(option == 2){
        person.sort((a, b) => a.age.compareTo(b.age));
        print('Danh sách đã được sắp xếp theo tuổi\n');
        for(var persons in person){
          print(persons);
        }
        break;
      }

    case 3: //Sắp xếp theo chức vụ 
      if(option == 3){
        Personel.sort((a,b){
          int indexA = positions.indexWhere((pos) => pos == a.positions);
          int indexB = positions.indexWhere((pos) => pos == b.positions);
          return indexA.compareTo(indexB);
        });
        print('Danh sách đã được sắp xếp thành công\n');
        for(var x in positions){
          print(x);
        }

        break;
      }
  }
}
}
