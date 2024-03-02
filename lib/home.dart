import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jitak_getex/controllers/search_controller.dart';
import 'package:svg_flutter/svg.dart';

double h = 0;
double w = 0;

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    h = Get.height;
    w = Get.width;

    return Scaffold(
      body: Obx(
        () => PageStorage(
          bucket: homeController.bucket,
          child: homeController.screens[homeController.currentTab.value],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: const Color(0xffFAAA14),
        shape: const CircleBorder(),
        backgroundColor: const MaterialColor(0xffFFD78D,
            <int, Color>{100: Color(0xffFAAA14), 50: Color(0xffEDA827)}),
        onPressed: () {
          Get.snackbar('近日公開...', "近日公開...",
              backgroundColor: const Color(0xffFFC8AB));
        },
        child: SvgPicture.asset('assets/scan-line.svg'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
          // BottomAppBar(
          //   height: h * 0.1,
          //   child: Row(
          //     children: <Widget>[
          //       for (var i = 0; i < homeController.screens.length; i++)
          //         Expanded(
          //           child: InkWell(
          //             onTap: () {
          //               homeController.changeTab(i);
          //             },
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 SvgPicture.asset(
          //                   'assets/search.svg',
          //                   color: homeController.currentTab.value == i
          //                       ? const Color(0xffFAAA14)
          //                       : Colors.blueGrey,
          //                 ),
          //                 Text(
          //                   'さがす',
          //                   style: TextStyle(
          //                     fontSize: w * 0.025,
          //                     fontWeight: FontWeight.bold,
          //                     color: homeController.currentTab.value == i
          //                         ? const Color(0xffFAAA14)
          //                         : Colors.blueGrey,
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //     ],
          //   ),
          // ),
          ///
          BottomAppBar(
        height: h * 0.1,
        child: Row(children: [
          Expanded(
            child: InkWell(
              onTap: () {
                homeController.changeTab(0);
                // homeController.changeScreen(SearchPage());
              },
              child: Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/search.svg',
                        color: homeController.currentTab.value == 0
                            ? const Color(0xffFAAA14)
                            : Colors.blueGrey,
                      ),
                      Text(
                        'さがす',
                        style: TextStyle(
                          fontSize: w * 0.025,
                          fontWeight: FontWeight.bold,
                          color: homeController.currentTab.value == 0
                              ? const Color(0xffFAAA14)
                              : Colors.blueGrey,
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                homeController.currentTab(1);
                // setState(() {
                //   currentScreen = const Buisness();
                //   currentTab = 1;
                // });
              },
              child: Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/office bag.svg',
                        color: homeController.currentTab.value == 1
                            ? const Color(0xffFAAA14)
                            : Colors.blueGrey,
                      ),
                      Text(
                        'お仕事',
                        style: TextStyle(
                          fontSize: w * 0.025,
                          fontWeight: FontWeight.bold,
                          color: homeController.currentTab.value == 1
                              ? const Color(0xffFAAA14)
                              : Colors.blueGrey,
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '打刻する',
                  style: TextStyle(
                    fontSize: w * 0.025,
                    fontWeight: FontWeight.bold,
                    color:
                        // homeController.currentTab.value == 3
                        //     ? const Color(0xffFAAA14)
                        //     :
                        Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                homeController.changeTab(2);
                // setState(() {
                //   currentScreen = const Chat();
                //   currentTab = 4;
                // });
              },
              child: Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/typing.svg',
                        color: homeController.currentTab.value == 2
                            ? const Color(0xffFAAA14)
                            : Colors.blueGrey,
                      ),
                      Text(
                        'チャット',
                        style: TextStyle(
                          fontSize: w * 0.025,
                          fontWeight: FontWeight.bold,
                          color: homeController.currentTab.value == 2
                              ? const Color(0xffFAAA14)
                              : Colors.blueGrey,
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                homeController.changeTab(3);
                // setState(() {
                //   currentScreen = const Profile();
                //   currentTab = 5;
                // });
              },
              child: Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/account.svg',
                        color: homeController.currentTab.value == 3
                            ? const Color(0xffFAAA14)
                            : Colors.blueGrey,
                      ),
                      Text(
                        'マイページ',
                        style: TextStyle(
                          fontSize: w * 0.025,
                          fontWeight: FontWeight.bold,
                          color: homeController.currentTab.value == 3
                              ? const Color(0xffFAAA14)
                              : Colors.blueGrey,
                        ),
                      )
                    ],
                  )),
            ),
          )
        ]),
      ),
    );
  }
}

//     );
//   }
// }
///
//
// double h = 0;
// double w = 0;
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int currentTab = 0;
//   final HomeController _homeController = Get.put(HomeController());
//   // final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = const SearchPage();
//   @override
//   Widget build(BuildContext context) {
//     // h = Get.height;
//     // w = Get.width;
//     // ignore: unused_local_variable
//     var barcode = 'Tap  to scan'.obs;
//     return Scaffold(
//       body: Obx(() => PageStorage(
//             bucket: _homeController.bucket,
//             child: _homeController.currentScreen,
//           )),
//       floatingActionButton: FloatingActionButton(
//         splashColor: const Color(0xffFAAA14),
//         shape: const CircleBorder(),
//         backgroundColor: const MaterialColor(0xffFFD78D,
//             <int, Color>{100: Color(0xffFAAA14), 50: Color(0xffEDA827)}),
//         onPressed: () {
//           Get.to(AiBarcodeScanner(
//             validator: (value) {
//               return value.startsWith('https://');
//             },
//             canPop: false,
//             onScan: (String value) {
//               if (kDebugMode) {
//                 print(value);
//               }
//             },
//             onDetect: (p0) {},
//             onDispose: () {
//               if (kDebugMode) {
//                 print("Barcode scanner disposed!");
//               }
//             },
//             controller: MobileScannerController(
//               detectionSpeed: DetectionSpeed.noDuplicates,
//             ),
//           ));
//         },
//         child: SvgPicture.asset('assets/scan-line.svg'),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         height: h * 0.1,
//         child: Row(children: <Widget>[
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 _homeController.currentScreen = const SearchPage();
//                 // setState(() {
//                 //   currentScreen = const SearchPage();
//                 //   currentTab = 0;
//                 // });
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/search.svg',
//                     color: currentTab == 0
//                         ? const Color(0xffFAAA14)
//                         : Colors.blueGrey,
//                   ),
//                   Text(
//                     'さがす',
//                     style: TextStyle(
//                       fontSize: w * 0.025,
//                       fontWeight: FontWeight.bold,
//                       color: currentTab == 0
//                           ? const Color(0xffFAAA14)
//                           : Colors.blueGrey,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//                   currentScreen = const Buisness();
//                   currentTab = 1;
//                 });
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/office bag.svg',
//                     color: currentTab == 1
//                         ? const Color(0xffFAAA14)
//                         : Colors.blueGrey,
//                   ),
//                   Text(
//                     'お仕事',
//                     style: TextStyle(
//                       fontSize: w * 0.025,
//                       fontWeight: FontWeight.bold,
//                       color: currentTab == 1
//                           ? const Color(0xffFAAA14)
//                           : Colors.blueGrey,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text(
//                   '打刻する',
//                   style: TextStyle(
//                     fontSize: w * 0.025,
//                     fontWeight: FontWeight.bold,
//                     color: currentTab == 3
//                         ? const Color(0xffFAAA14)
//                         : Colors.blueGrey,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//                   currentScreen = const Chat();
//                   currentTab = 4;
//                 });
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/typing.svg',
//                     color: currentTab == 4
//                         ? const Color(0xffFAAA14)
//                         : Colors.blueGrey,
//                   ),
//                   Text(
//                     'チャット',
//                     style: TextStyle(
//                       fontSize: w * 0.025,
//                       fontWeight: FontWeight.bold,
//                       color: currentTab == 4
//                           ? const Color(0xffFAAA14)
//                           : Colors.blueGrey,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//                   currentScreen = const Profile();
//                   currentTab = 5;
//                 });
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/account.svg',
//                     color: currentTab == 5
//                         ? const Color(0xffFAAA14)
//                         : Colors.blueGrey,
//                   ),
//                   Text(
//                     'マイページ',
//                     style: TextStyle(
//                       fontSize: w * 0.025,
//                       fontWeight: FontWeight.bold,
//                       color: currentTab == 5
//                           ? const Color(0xffFAAA14)
//                           : Colors.blueGrey,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }
