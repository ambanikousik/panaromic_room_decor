import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panorama/panorama.dart';

import 'info_hotspot.dart';

class PanoramaView extends HookWidget {
  const PanoramaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Panorama(
          // sensorControl: SensorControl.Orientation,
          // onTap: (a, b, c) {
          //   print(b);
          //   print(a);
          // },
          child: Image.asset('asset/living_room.jpeg'),
          hotspots: [
            Hotspot(
              latitude: -10,
              longitude: -20,
              height: 100.h,
              width: 250.w,
              widget: const InfoHotsPot(name: "Indoor Plant", price: 200),
            ),
            Hotspot(
              latitude: 1,
              longitude: 35,
              height: 100.h,
              width: 250.w,
              widget: const InfoHotsPot(name: "Television", price: 800),
            ),
            Hotspot(
              latitude: -10,
              longitude: -93,
              height: 100.h,
              width: 250.w,
              widget: const InfoHotsPot(name: "Chair", price: 300),
            ),
            Hotspot(
              latitude: -33,
              longitude: 179,
              height: 100.h,
              width: 250.w,
              widget: const InfoHotsPot(name: "Sofa", price: 900),
            ),
          ],
        ),
      ),
    );
  }
}
