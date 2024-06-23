import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../charities_info/life_info.dart';
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
    "assets/images/charity.png",
    "assets/images/LM.png",
    "assets/images/beralalya 1.png",
  ];
  List text = [
    "Red Crescent",
    "RESALA",
    "CHARITY",
    "LIFE Makers",
    "BERALALYA",
  ];
  List pageNav = [
    RedInfoScreen(),
    ResalaScreen(),
    CharitiesScreen(),
    LIFEMakesScreen(),
    CharitiesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              onPressed: () {
                // here back to home page
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            ...List.generate(
              logo.length,
                  (index) =>
                  InkWell(
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
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      margin: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 20.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey.withOpacity(.5)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.sp)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            logo[index],
                            width: 30.w,
                            height: 30.h,
                          ),
                          Text(
                            text[index],
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight
                                .w600),
                          ),
                        ],
                      ),
                    ),
                  ),
            )
          ],
        )
    );
  }
}
