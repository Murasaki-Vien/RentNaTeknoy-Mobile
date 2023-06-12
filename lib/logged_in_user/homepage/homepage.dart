import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_na_teknoy/components/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:rent_na_teknoy/components/text_fields/search_bar.dart';
import 'package:rent_na_teknoy/constants/constant.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser!;
  int? value = 0;
  bool val = false;

  final List category = ['House', 'Apartment', 'Office', 'Hotel'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15.w, 14.h, 0.w, 0.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hi {Name of the user}",
                            style: GoogleFonts.poppins(
                                fontSize: 25.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 38.h,
                      ),
                      //search Bar
                      const Row(
                        children: [SearchBarCustom()],
                      ),
                      //end of search bar
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 45.h,
              ),

              //category
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: SizedBox(
                  height: 39.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 32.w),
                        child: ChoiceChip(
                          label: Text(
                            category[index],
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          selected: value == index,
                          selectedColor: customMaroon,
                          onSelected: (val) {
                            setState(() {
                              print(category[index]);
                              value = val ? index : null;
                            });
                          },
                          shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                        ),
                      );
                      // MainCategoryButtons(
                      //   category: category[index],
                      //   categIndex : category.indexOf(category[index]),
                      // );
                    },
                  ),
                ),
              ),
              //end of category

              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 34.h),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recommendations',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          )),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: const Color(0xff4D4D4D),
                                    width: 1.w))),
                        child: Text('View all',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              FloatingActionButton(
                child: Text("Sign out"),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),

        //custom navigation here
      ),
    );
  }
}

//child: Row(
                    //   mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     SvgPicture.asset('assets/svg/home.svg', color: customMaroon,
                        
                    //     ),
                    //     SvgPicture.asset('assets/svg/wallet.svg', color: customMaroon,
                    //     ),
                    //     SvgPicture.asset('assets/svg/shop.svg', color: customMaroon,
                    //     ),
                    //     SvgPicture.asset('assets/svg/analysis.svg', color: customMaroon,
                    //     ),
                    //     SvgPicture.asset('assets/svg/user.svg', color: customMaroon,
                    //     ),
                    //   ],
                    // ),