import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:panaromic_room_decor/panorama_view.dart';
// import 'package:line_icons/line_icons.dart';

class DetailsPage extends HookWidget {
  const DetailsPage({Key? key}) : super(key: key);
  final List<String> carousels = const [
    'asset/kitchen.jpg',
    'asset/pic1.jpg',
    'asset/pic2.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(1);
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 600.h,
                  margin: EdgeInsets.only(top: 20.h),
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
                      image: DecorationImage(
                        image: AssetImage(carousels[selectedIndex.value]),
                        fit: BoxFit.cover,
                      )),
                  child: Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.sp),
                      gradient: const LinearGradient(
                        end: Alignment(0.0, 0.5),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 60.w,
                              height: 60.w,
                              child: CircleAvatar(
                                  backgroundColor: Colors.white30,
                                  child: Padding(
                                    padding: EdgeInsets.all(5.sp),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white70,
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        // padding: EdgeInsets.zero,
                                        // iconSize: 20.sp,
                                        color: const Color(0xff45bee4),
                                        icon: const Icon(
                                          CupertinoIcons.arrow_uturn_left,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 60.w,
                              height: 60.w,
                              child: CircleAvatar(
                                  backgroundColor: Colors.white30,
                                  child: Padding(
                                    padding: EdgeInsets.all(5.sp),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white70,
                                      child: IconButton(
                                        onPressed: () {},
                                        color: const Color(0xff45bee4),
                                        icon: const Icon(
                                          Icons.filter_2_outlined,
                                        ),
                                      ),
                                    ),
                                  )),
                            )
                          ],
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
                              SizedBox(
                                width: 60.w,
                                child: ListView.builder(
                                  itemCount: carousels.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => InkWell(
                                    onTap: () => selectedIndex.value = index,
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      height: selectedIndex.value == index
                                          ? 70.w
                                          : 60.w,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 5.h),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: EdgeInsets.all(5.w),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          carousels[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Row(
                  children: [
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
                        LineIcons.bed,
                        color: Color(0xff45bee4),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        '5 Bed',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
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
                        LineIcons.bath,
                        color: Color(0xff45bee4),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        '2 Bath',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Text(
                  'The peculiar thing about the Modern House is that it has become such a colossal hit with those who could never hope to afford even the cheapest of its listings. ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Price',
                    style: TextStyle(
                        color: Colors.grey,
                        // fontSize: 25.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  RichText(
                      text: TextSpan(
                          text: '30,000/',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                          text: 'month',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w300),
                        )
                      ]))
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.symmetric(
                          vertical: 25.h, horizontal: 35.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.sp))),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const PanoramaView())),
                  child: const Text('Rent Now'))
            ],
          ),
        ));
  }
}
