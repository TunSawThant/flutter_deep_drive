import 'package:contact_form/screens/contact_form1.dart';
import 'package:contact_form/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: [
        //Simple GetPage
        GetPage(name: '/', page: () => ContactFormOne()),
        // GetPage with custom transitions and bindings
        GetPage(
          name: '/second',
          page: () => null,
          //binding: SampleBind(),
        ),
      ],
      home: ContactFormOne(),
    );
  }
}
