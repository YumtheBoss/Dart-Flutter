import 'dart:io';

import "package:person_management/personmanagement.dart";

void main(){
  PersonManagement pm = PersonManagement();


  while(true){
    print('1. Thêm thông tin');
    print('2. Xóa thông tin');
    print('3. Hiển thị danh sách');
    print('4. Chỉnh sửa thông tin');
    print('5. Sắp xếp lại danh sách');
    print('6. Thoát chương trình');

    stdout.write('Hãy chọn tác vụ:');
    int choice = int.parse(stdin.readLineSync()!);


    switch(choice){
      case 1:
      pm.addInfo();
      break;

      case 2:
      pm.removeInfo();
      break;

      case 3: 
      pm.displayInfo();
      break;

      case 4:
      pm.editInfo();
      break;

      case 5:
      pm.arrangeInfo();
      break;
      
      case 6: 
      print('Thoát chương trình');
      return;
    }
  }
}
