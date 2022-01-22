import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_todo/interfaces/route_sample/named/first_name.dart';
import 'package:playground_todo/interfaces/route_sample/named/todo_show.dart';
import 'package:playground_todo/interfaces/route_sample/normal/second.dart';
import 'package:playground_todo/module/todo_binding.dart';
import 'interfaces/home.dart';

void main() => runApp(GetMaterialApp(
  getPages: [
    GetPage(name: '/', page: () => Home(), binding: TodoBinding(), transition: Transition.zoom),
    GetPage(name: '/first', page: () => const FirstNamePage(), transition: Transition.topLevel),
    GetPage(name: '/second', page: () => const SecondPage(), transition: Transition.cupertino),
    GetPage(name: '/todos/:id', page: () => const TodoShowPage(), transition: Transition.cupertino),
  ]
));

