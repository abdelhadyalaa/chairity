import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'charities/view.dart';
import 'charities_info/life_info.dart';
import 'charities_info/red_info.dart';
import 'charities_info/resala_info.dart';
import 'item_add/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Poppins",
            // scaffoldBackgroundColor: Colors.white,
            primaryColor: Color(0xff02A591),
          ),
          home: PageView(
            children: [
              // AddItem(),
              // LIFEMakesScreen(),
              // ResalaScreen(),
              // RedInfoScreen(),
              CharitiesScreen(),
            ],
          ),
        );
      },
    );
  }
}
