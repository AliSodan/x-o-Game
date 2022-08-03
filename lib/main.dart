import 'package:flutter/material.dart';
import 'core/constants/app_colors.dart';
import 'core/routes/router.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor:AppColors.BACKGROUND ),
      onGenerateRoute:AppRouter.onGenerateRoute ,
    );
  }
}