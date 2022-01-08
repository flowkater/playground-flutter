import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_todo/module/todo_binding.dart';
import 'interfaces/home.dart';

void main() => runApp(GetMaterialApp(
  getPages: [
    GetPage(name: '/', page: () => Home(), binding: TodoBinding()),
  ]
));

