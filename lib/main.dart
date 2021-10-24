import 'package:davnorvetcare/constants/constants.dart';
import 'package:davnorvetcare/constants/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:davnorvetcare/constants/routes.dart';
//import 'package:get/get.dart';

void main() {
  runApp(MyApp()
    );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        //scaffoldBackgroundColor: Colors.white
      ),
      initialRoute: '/login',
      getPages: AppRoutes.routes,
      
     
      
    );
  }
}





