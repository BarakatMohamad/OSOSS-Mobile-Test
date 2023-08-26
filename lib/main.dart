import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/routes.dart';
import 'bindings/initial_bindings.dart';
import 'core/service/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ososs test',
      initialRoute: '/splashScreen',
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
