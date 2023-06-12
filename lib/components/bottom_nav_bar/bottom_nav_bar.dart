import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_na_teknoy/constants/constant.dart';
import 'package:rent_na_teknoy/logged_in_user/homepage/homepage.dart';
import 'package:rent_na_teknoy/logged_in_user/user_profile_page/user_profile_page.dart';
import 'package:rent_na_teknoy/logged_in_user/user_shop_page/user_shop_page.dart';
import 'package:rent_na_teknoy/logged_in_user/user_stats_page/user_stats_page.dart';
import 'package:rent_na_teknoy/logged_in_user/wallet_page/user_wallet_page.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  bool homeIcon = true;
  bool walletIcon = false;
  bool shopIcon = false;
  bool statsIcon = false;
  bool userIcon = false;
  int? iconValue = 0;
  int indexValue = 0;
  final List appPagesIcon = [
    'assets/svg/home.svg',
    'assets/svg/wallet.svg',
    'assets/svg/shop.svg',
    'assets/svg/analysis.svg',
    'assets/svg/user.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor : customGrey,
        body: Stack(
          children: [
            
            LayoutBuilder(builder: (context, constraints){
              if(indexValue == 0){
                return const Homepage();
              }else if(indexValue == 1){
                return const UserWalletPage();
              }else if(indexValue == 2){
                return const UserShopPage();
              }else if(indexValue == 3){
                return const UserStatsPage();
              }else{
                return const UserProfilePage();
              }
            }
            ),
    
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: customWhite,
                ),
                height: 90.h,
                child: Padding(
                    padding: EdgeInsets.only(
                      left: 40.w,
                      right : 40.w
                    ),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap : (){
                            setState(() {
                              homeIcon = true;
                              walletIcon = false;
                              shopIcon = false;
                              statsIcon = false;
                              userIcon = false;
                              indexValue = 0;
                            });
                          },
                          child: AnimatedContainer(
                            height : 54.h,
                            width : 54.w,
                            duration : const Duration(milliseconds: 500),
                            decoration : BoxDecoration(
                              color : homeIcon ? customMaroon : customGrey,
                              borderRadius : BorderRadiusDirectional.circular(20)
                            ),
                            child: Center(child: SvgPicture.asset(appPagesIcon[0], color : homeIcon ? customWhite : colorBlack))
                          ),
                        ),
                        GestureDetector(
                          onTap : (){
                            setState(() {
                              homeIcon = false;
                              walletIcon = true;
                              shopIcon = false;
                              statsIcon = false;
                              userIcon = false;
                              indexValue = 1;
                            });
                          },
                          child: AnimatedContainer(
                            height : 54.h,
                            width : 54.w,
                            duration : const Duration(milliseconds: 500),
                            decoration : BoxDecoration(
                              color : walletIcon ? customMaroon : customGrey,
                              borderRadius : BorderRadiusDirectional.circular(20)
                            ),
                            child: Center(child: SvgPicture.asset(appPagesIcon[1], color : walletIcon ? customWhite : colorBlack))
                          ),
                        ),
                        GestureDetector(
                          onTap : (){
                            setState(() {
                              homeIcon = false;
                              walletIcon = false;
                              shopIcon = true;
                              statsIcon = false;
                              userIcon = false;
                              indexValue = 2;
                            });
                          },
                          child: AnimatedContainer(
                            height : 54.h,
                            width : 54.w,
                            duration : const Duration(milliseconds: 500),
                            decoration : BoxDecoration(
                              color : shopIcon ? customMaroon : customGrey,
                              borderRadius : BorderRadiusDirectional.circular(20)
                            ),
                            child: Center(child: SvgPicture.asset(appPagesIcon[2], color :shopIcon ? customWhite : colorBlack))
                          ),
                        ),
                        GestureDetector(
                          onTap : (){
                            setState(() {
                              homeIcon = false;
                              walletIcon = false;
                              shopIcon = false;
                              statsIcon = true;
                              userIcon = false;
                              indexValue = 3;
                            });
                          },
                          child: AnimatedContainer(
                           height : 54.h,
                            width : 54.w,
                            duration : const Duration(milliseconds: 500),
                            decoration : BoxDecoration(
                              color : statsIcon ? customMaroon : customGrey,
                              borderRadius : BorderRadiusDirectional.circular(20)
                            ),
                            child: Center(child: SvgPicture.asset(appPagesIcon[3], color :statsIcon ? customWhite : colorBlack))
                          ),
                        ),
                        GestureDetector(
                          onTap : (){
                            setState(() {
                              homeIcon = false;
                              walletIcon = false;
                              shopIcon = false;
                              statsIcon = false;
                              userIcon = true;
                              indexValue = 4;
                            });
                          },
                          child: AnimatedContainer(
                            height : 54.h,
                            width : 54.w,
                            duration : const Duration(milliseconds: 500),
                            decoration : BoxDecoration(
                              color : userIcon ? customMaroon : customGrey,
                              borderRadius : BorderRadiusDirectional.circular(20)
                            ),
                            child: Center(child: SvgPicture.asset(appPagesIcon[4], color : userIcon ? customWhite : colorBlack))
                          ),
                        ),
                        
                      ],
                    )
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ListView.builder(
//                       shrinkWrap : true,
//                       //physics : const NeverScrollableScrollPhysics(),
//                       scrollDirection: Axis.horizontal,
//                       itemCount: appPagesIcon.length,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: EdgeInsets.only(right: 20.w),
//                           child: ChoiceChip(
//                             label: SvgPicture.asset(appPagesIcon[index],
//                                 color: customWhite),
//                             selected: iconValue == index,
//                             selectedColor: customMaroon,
//                             disabledColor: customWhite,
//                             onSelected: (bool val) {
//                               setState(() {
//                                 print(appPagesIcon[index]);
//                                 iconValue = val ? index : null;
//                                 indexValue = index;
//                                 print(indexValue);
//                               });
//                             },
//                             shape: ContinuousRectangleBorder(
//                                 borderRadius: BorderRadiusDirectional.circular(20)),
//                           ),
//                         );
//                       },
//                     )