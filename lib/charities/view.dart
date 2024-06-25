import 'package:bakr_poject/charities_info/food_bank.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../charities_info/life_info.dart';
import '../charities_info/orman.dart';
import '../charities_info/red_info.dart';
import '../charities_info/resala_info.dart';

class CharitiesScreen extends StatefulWidget {
  const CharitiesScreen({Key? key}) : super(key: key);

  @override
  State<CharitiesScreen> createState() => _CharitiesScreenState();
}

class _CharitiesScreenState extends State<CharitiesScreen> {
  List logo = [
    "assets/images/moon-solid 1.png",
    "assets/images/Resala 1.png",
    "assets/images/foodbank.png",
    "assets/images/LM.png",
    "assets/images/orman.png",
  ];
  List text = [
    "Red Crescent",
    "RESALA",
    "Egyptian Food Bank",
    "LIFE Makers",
    "Al Orman",
  ];
  List pageNav = [
    RedInfoScreen(),
    ResalaScreen(),
    FoodBankScreen(),
    LIFEMakesScreen(),
    AlOrmanScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () {
                // here back to home page
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 35.sp,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            ...List.generate(
              logo.length,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pageNav[index],
                    ),
                  );
                },
                child: Container(
                  height: 66.h,
                  width: double.infinity.w,
                  padding: EdgeInsets.symmetric(horizontal: 30.w).r,
                  margin:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(.5)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        logo[index],
                        width: 50.w,
                        height: 50.h,
                      ),
                      Text(
                        text[index],
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
