import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/splash.dart';
import 'package:flutter/material.dart';


void main() async{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'BiaacoMed',
              theme: AppTheme.lightTheme,
              home: Splash(),

              //  home: DoctorListScreen(),
              // home: place_order(),
            );
          },
        );
      },
    );
  }
}
