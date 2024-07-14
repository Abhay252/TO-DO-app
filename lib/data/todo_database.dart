import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List toDoList = [];
  //box
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ["Homework", true],
      ["Lunch", false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
