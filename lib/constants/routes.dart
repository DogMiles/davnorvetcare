import 'package:davnorvetcare/screens/auth/login.dart';
import 'package:get/get.dart';


class AppRoutes{
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
     GetPage(name: '/login', page: () => Login()),
  ];

}