import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoHotsPot extends HookWidget {
  final String name;
  final int price;
  const InfoHotsPot({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showInfo = useState(false);
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedContainer(
          height: 100.h,
          width: showInfo.value ? 250.w : 80.w,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
              color: showInfo.value ? Colors.black54 : Colors.transparent,
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          left: 20.w,
          child: Row(
            children: [
              SizedBox(
                height: 80.h,
                child: InkWell(
                  onTap: () {
                    showInfo.value = !showInfo.value;
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(18.w),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: showInfo.value ? 1 : 0,
                child: AnimatedContainer(
                  margin: EdgeInsets.only(left: showInfo.value ? 20.w : 0),
                  duration: const Duration(milliseconds: 600),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$$price",
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
