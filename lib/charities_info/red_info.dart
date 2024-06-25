import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../item_add/view.dart';

class RedInfoScreen extends StatelessWidget {
  const RedInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 200, bottom: 30, right: 30),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => AddItem(),), (route) => false);
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(50, 60),
              backgroundColor: Theme.of(context).primaryColor),
          child: Text(
            "Donate",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/moon-solid 1.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text("Red Crescent",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 32.sp)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Informations",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Container(
              height: 4,
              width: 150,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.phone,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "- 15322",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "- 01150002790 ",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "- 01113201617",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Bank accounts :",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 20.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 56.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "- 911111",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "- 702379  ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.email,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Row(
                  children: [
                    Text(
                      ":",
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "volunteers@egyptianrc.org",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
