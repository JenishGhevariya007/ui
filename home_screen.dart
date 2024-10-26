import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/Common/extension_sizedbox.dart';
import 'package:ui/Common/extension_textstyle.dart';

class HomeScreenSal extends StatefulWidget {
  const HomeScreenSal({super.key});

  @override
  State<HomeScreenSal> createState() => _HomeScreenSalState();
}

class _HomeScreenSalState extends State<HomeScreenSal> {
  List<Map<String, dynamic>> salonImage = [
    {
      "image": "assets/images/Rashmika.jpg",
      "name": "Rashmika Mandanna",
    },
    {
      "image": "assets/images/Hannah.jpeg",
      "name": "Hannah Benson",
    },
    {
      "image": "assets/images/virat.jpg",
      "name": "Virat kohli",
    },
  ];
  List<Map<String, dynamic>> salonIcon = [
    {
      "icon": "assets/images/Hair salon.png",
      "name": "Hair Salon",
    },
    {
      "icon": "assets/images/Nail salon.png",
      "name": "Nail Salon",
    },
    {
      "icon": "assets/images/Makup.png",
      "name": "Beauty Salon",
    },
    {
      "icon": "assets/images/make-up-bag.png",
      "name": "Beauty Salon",
    },
    {
      "icon": "assets/images/Massager.png",
      "name": "Massager",
    },
  ];
  List<Map<String, dynamic>> specialSalon = [
    {"image": "assets/images/offers image.jpeg"},
    {"image": "assets/images/offers image 2.jpeg"},
    {"image": "assets/images/offers image 3.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6E4E4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: MyCustomClip(),
              child: Container(
                height: 30.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: const Color(0xff872C3E),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.h),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sunny,
                            color: Colors.orangeAccent,
                            size: 35.sp,
                          ),
                          3.w.addWSpace(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              "New York".addTextstyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                children: [
                                  "32".addTextstyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: "o".addTextstyle(
                                      fontSize: 7.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  0.5.w.addWSpace(),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.5.h),
                                    child: "c".addTextstyle(
                                      fontSize: 13.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 11.h,
                            width: 11.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.notifications_none,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.brown,
                          ),
                          hintText: "Search your services...",
                          hintStyle: TextStyle(
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            2.h.addHSpace(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: "My Master".addTextstyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                2.h.addHSpace(),
                SizedBox(
                  height: 22.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: salonImage.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 4.w, top: 6.5.h),
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child:
                                  "${salonImage[index]['name']}".addTextstyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18.w,
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "${salonImage[index]['image']}"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16.h,
                            left: 14.5.w,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffD1ADAD),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: "Book Now".addTextstyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                2.h.addHSpace(),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: Row(
                    children: [
                      "Top Services".addTextstyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      const Spacer(),
                      "See All".addTextstyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      2.w.addWSpace(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                        size: 13.sp,
                      ),
                    ],
                  ),
                ),
                4.h.addHSpace(),
                SizedBox(
                  height: 12.h,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2.w, right: 2.w),
                            height: 9.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "${salonIcon[index]['icon']}",
                              scale: 15,
                            ),
                          ),
                          1.h.addHSpace(),
                        ],
                      );
                    },
                  ),
                ),
                3.h.addHSpace(),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: Row(
                    children: [
                      "Special Offers".addTextstyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      const Spacer(),
                      "See All".addTextstyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      2.w.addWSpace(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                        size: 13.sp,
                      ),
                    ],
                  ),
                ),
                2.h.addHSpace(),
                SizedBox(
                  height: 15.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: specialSalon.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 2.w, right: 2.w),
                        height: 15.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              "${specialSalon[index]['image']}",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                1.h.addHSpace(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomClip extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0.w, 30.5.h);

    path.lineTo(85.w, 25.5.h);
    path.quadraticBezierTo(50.w, 25.h, 100.w, 30.h);

    path.lineTo(100.w, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
