import 'package:arquitetura_limpa/src/modules/home/home_module.dart';
import 'package:arquitetura_limpa/src/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>> customRoutes = [
  GetPage(
      name: HomePage.homePage, 
      binding: HomeModule(), 
      page: () => HomePage()),
  
];