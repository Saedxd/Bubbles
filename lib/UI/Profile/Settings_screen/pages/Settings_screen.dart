
import 'package:bubbles/Data/prefs_helper/iprefs_helper.dart';
import 'package:bubbles/Injection.dart';
import 'package:bubbles/UI/DirectMessages/DirectMessages_Screen/pages/DirectMessages_screen.dart';
import 'package:bubbles/UI/Home/Home_Screen/pages/HomeScreen.dart';
import 'package:bubbles/UI/NavigatorTopBar_Screen/pages/NavigatorTopBar.dart';
import 'package:bubbles/UI/Onboarding/Login_screen/pages/Login_Page.dart';
import 'package:bubbles/UI/Profile/Friendlist_Screen/pages/Friendlist_screen.dart';
import 'package:bubbles/UI/Profile/Settings_screen/bloc/Settings_bloc.dart';
import 'package:bubbles/UI/Profile/Settings_screen/bloc/Settings_event.dart';
import 'package:bubbles/UI/Profile/Settings_screen/bloc/Settings_state.dart';
import 'package:bubbles/UI/Profile/SuggestedFrineds_Screen/pages/SuggestedFrineds_screen.dart';
import 'package:bubbles/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../Profile_Screen/pages/Porfile_Screen.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _SearchController = TextEditingController();
  final _formkey1 = GlobalKey<FormState>();
  late FocusNode FocuseNODE;
  final _SettingsBloc = sl<SettingsBloc>();
  final pref = sl<IPrefsHelper>();
  @override
  void initState() {
    super.initState();
    FocuseNODE = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _SearchController.dispose();
  }

  Future<void> setlogout() async {
    await pref.logout();
  }
  bool diditonce = false;

  @override
  Widget build(BuildContext context){
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    TextTheme _TextTheme = Theme.of(context).textTheme;
    ColorScheme ColorS = Theme.of(context).colorScheme;

    return BlocBuilder(
        bloc:   _SettingsBloc,
        builder: (BuildContext Context, SettingsState state)
    {




      return
      Scaffold(
        key: _scaffoldKey,
        body:Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [

                  Container(
                    margin: EdgeInsets.only(top: h / 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: h / 20),
                            child: IconButton(
                              icon: SvgPicture.asset(
                                  "Assets/images/Frame 11.svg",
                                  width: 30.w,
                                  color: ColorS.surface),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                        Text('Settings', textAlign: TextAlign.left,
                          style: _TextTheme.headlineLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize:  020.sp,
                          ),),
                        Text(""),
                        Text(""),

                      ],
                    ),
                  ),


                  // Container(
                  //   width: w / 1.4,
                  //   child: Row(
                  //     children: [
                  //       InkWell(
                  //         onTap: () {
                  //           WidgetsBinding.instance!
                  //               .addPostFrameCallback((_) =>
                  //               Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) =>
                  //                     const FreindRequests()),
                  //               ));
                  //         },
                  //         child: Container(
                  //           width: w / 2.7,
                  //           height: h / 14.5,
                  //           decoration: const BoxDecoration(
                  //             borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(7),
                  //               topRight: Radius.circular(7),
                  //               bottomLeft: Radius.circular(7),
                  //               bottomRight: Radius.circular(7),
                  //             ),
                  //             color: Color.fromRGBO(148, 38, 87, 1),
                  //           ),
                  //           child: const Center(
                  //             child: Text(
                  //               'Friend requests', textAlign: TextAlign.center,
                  //               style: TextStyle(
                  //                   color: Color.fromRGBO(255, 255, 255, 1),
                  //                   fontFamily: 'ABeeZee',
                  //                   fontSize: 15,
                  //                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  //                   fontWeight: FontWeight.normal,
                  //                   height: 1
                  //               ),),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: 10.h,),
                  // Container(
                  //     width: w / 1.4,
                  //     child: Row(
                  //         children: [
                  //           InkWell(
                  //             onTap: () {
                  //               WidgetsBinding.instance!
                  //                   .addPostFrameCallback((_) =>
                  //                   Navigator.push(
                  //                     context,
                  //                     MaterialPageRoute(
                  //                         builder: (context) =>
                  //                         const SuggestedFreinds_Screen()),
                  //                   ));
                  //             },
                  //             child: Container(
                  //               width: w / 2.7,
                  //               height: h / 14.5,
                  //               decoration: const BoxDecoration(
                  //                 borderRadius: BorderRadius.only(
                  //                   topLeft: Radius.circular(7),
                  //                   topRight: Radius.circular(7),
                  //                   bottomLeft: Radius.circular(7),
                  //                   bottomRight: Radius.circular(7),
                  //                 ),
                  //                 color: Color.fromRGBO(148, 38, 87, 1),
                  //               ),
                  //               child: const Center(
                  //                 child: Text(
                  //                   'Suggested friends',
                  //                   textAlign: TextAlign.center, style: TextStyle(
                  //                     color: Color.fromRGBO(255, 255, 255, 1),
                  //                     fontFamily: 'ABeeZee',
                  //                     fontSize: 15,
                  //                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  //                     fontWeight: FontWeight.normal,
                  //                     height: 1
                  //                 ),),
                  //               ),
                  //             ),
                  //           ),
                  //         ]
                  //     )
                  // ),
                  Container(
                    height: h/1.3,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: ()async {

                            for(int i =0;i<AllBubblesStatus!.length;i++){
                              if (AllBubblesStatus![i]==1){
                                int Bubble_ID = AllBubblesIDS![i];
                                _SettingsBloc.add(UserLeftBubble((b) => b..Bubble_id =Bubble_ID));
                              }
                            }
                            if (timer != null)
                              timer!.cancel();
                            if (timer2 != null)
                              timer2!.cancel();
                            if (timer23 != null)
                              timer23!.cancel();
                            if (timer12 != null)
                              timer12!.cancel();
                            if (timer1212 != null)
                              timer1212!.cancel();
                            socket!.clearListeners();
                            socket!.disconnect();
                            AllBubblesStatus = List.filled(100000,0);
                            AllBubblesJoinStatusTry = List.filled(10000,false);
                            AllBubblesLeftStatusTry = List.filled(10000,true);
                            AllNearBubblesStatusTry = List.filled(10000,true);
                            AllBubblesIDS = List.filled(10000,0);
                            _SettingsBloc.add(Logout());
                            setlogout();
                            WidgetsBinding.instance
                                .addPostFrameCallback((_) =>
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                    Login()), (Route<dynamic> route) => false));
                          },
                          child: Container(
                            width: w / 1.2,
                            height: h / 13,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.only(
                                  topLeft: Radius.circular( h/20.5),
                                  topRight:Radius.circular( h/20.5),
                                  bottomLeft: Radius.circular( h/20.5),
                                  bottomRight:Radius.circular( h/20.5),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      offset:
                                      const Offset(
                                          0, 0),
                                      blurRadius: 5)
                                ],
                                color: Color(0xffA83063)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceAround,
                              children: [
                                Text('Logout',
                                    textAlign:
                                    TextAlign.left,
                                    style: _TextTheme
                                        .headline1!
                                        .copyWith(
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                      fontSize:  20.sp,
                                      color: Color
                                          .fromRGBO(0,
                                          0, 0, 1),
                                    )),
                                Text(""),
                                Text(""),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
            state.ISloadingLogout == true
                ? Center(child: listLoader(context: context))
                : SizedBox(),
          ],
        )
      );
    }
    );
  }
  Widget listLoader({context}) {
    return  SpinKitThreeBounce(
      color: Colors.blue,
      size: 30.0.w,
    );
  }
}
