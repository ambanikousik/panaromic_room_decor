import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:panaromic_room_decor/details_page.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomIndex = useState(0);
    final isFvrt = useState(false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: const [
                  Text('Location'),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff45bee4),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        LineIcons.mapMarker,
                        color: Color(0xff45bee4),
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Dhaka,',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold),
                              children: [
                            TextSpan(
                              text: ' Bangladesh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.normal),
                            )
                          ]))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(15.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.h),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      hintText: 'Search House',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(LineIcons.search),
                      suffixIcon: Container(
                        margin:
                            const EdgeInsets.only(right: 5, top: 3, bottom: 3),
                        decoration: BoxDecoration(
                            color: const Color(0xff121212),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.format_align_center,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const DetailsPage())),
                child: Container(
                  height: 600.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage('asset/kitchen.jpg'),
                        fit: BoxFit.cover,
                      )),
                  child: Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.sp),
                      gradient: const LinearGradient(
                        end: Alignment(0.0, 1),
                        begin: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Colors.transparent,
                          Color(0x8A000000),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          margin: EdgeInsets.all(15.w),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                LineIcons.mapPin,
                                color: Colors.red,
                              ),
                              Text(
                                'Maps',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Classic Mordern Kitchen',
                                      style: TextStyle(
                                          fontSize: 40.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Sector 13, Uttara',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.white30,
                                  child: IconButton(
                                    onPressed: () {
                                      isFvrt.value = !isFvrt.value;
                                    },
                                    icon: Icon(
                                      isFvrt.value
                                          ? LineIcons.heartAlt
                                          : LineIcons.heart,
                                      color: Colors.white,
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.h),
        height: 100.h,
        child: CustomNavigationBar(
          onTap: (i) {
            bottomIndex.value = i;
          },
          elevation: 2,
          currentIndex: bottomIndex.value,
          iconSize: 35.sp,
          selectedColor: Colors.white,
          strokeColor: const Color(0x300c18fb),
          unSelectedColor: Colors.grey[600],
          backgroundColor: const Color(0xff121212),
          borderRadius: const Radius.circular(20.0),
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Icons.home),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.lightbulb_outline),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.search),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}
