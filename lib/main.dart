import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/features/home/screen/home.dart';
import 'package:latihan_mobile/features/latihan/latihan.dart';
import 'package:latihan_mobile/features/layout/screen/layout.dart';
import 'package:latihan_mobile/features/splash/screen/splash.dart';
import 'package:latihan_mobile/utils/constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primaryColor: CColors.primary,
        useMaterial3: true,
      ),
      home:
      // const LatihanScreen(),
        const LayoutScreen()
      // SplashScreen(),
    );
  }
}
