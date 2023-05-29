import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simple_scholarship_app/pages/home_page.dart';

void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'simple scholarship',
      home: Home(),
    );
  }
}
