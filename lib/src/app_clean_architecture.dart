import 'package:arquitetura_limpa/src/core/routes/custom_routes.dart';
import 'package:arquitetura_limpa/src/core/themes/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class AppCleanArchitecture extends StatelessWidget {
  const AppCleanArchitecture({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Clean Architecture',
      debugShowCheckedModeBanner: false,
      theme: customTheme(),
      getPages: customRoutes,
    );
  }
}
