import 'package:flutter/material.dart';
import 'package:core_mvc/ui/screen/main_page.dart';
import 'package:core_mvc/app/app_theme.dart';

class PegawaiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVC',
      theme: AppThemeDataFactory.prepareThemeData(),
      home: MainPage(title: 'Pegawai APp'),
    );
  }

}

