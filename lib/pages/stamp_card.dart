import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jitak_non_getex/pages/edit_store.dart';
import 'package:svg_flutter/svg.dart';

import '../home.dart';

class StampCard extends StatefulWidget {
  const StampCard({super.key});

  @override
  State<StampCard> createState() => _StampCardState();
}

int currentCardIndex = 1;
PageController _pageController = PageController();

class _StampCardState extends State<StampCard> {
  @override
  Widget build(BuildContext context) {
    var gap = SizedBox(
      height: h * 0.028,
    );
    return Scaffold(
      backgroundColor: const Color(0xffA8B1FF),
      appBar: AppBar(
        backgroundColor: const Color(0xffA8B1FF),
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              // radius: w * 0.1,
              backgroundColor: const Color(0xff949EFF),
              child: Icon(
                CupertinoIcons.back,
                size: w * 0.08,
                color: const Color(0xffFFFFFF),
              ),
            ),
          ),
        ),
        title: Text(
          'スタンプカード詳細',
          style: TextStyle(
            fontSize: w * 0.05,
            color: const Color(0xffFFFFFF),
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Get.to(const EditStore());
              },
              child: SvgPicture.asset(
                'assets/minus-circle.svg',
                height: h * 0.04,
              )),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.05,
              width: w * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mer キッチン',
                    style: TextStyle(
                        fontSize: w * 0.045,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                  ),
                  SizedBox(
                      child: Row(
                    children: [
                      Text(
                        '現在の獲得数 ',
                        style: TextStyle(
                            fontSize: w * 0.045, color: Color(0xffFFFFFF)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          '30',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: w * 0.08,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ' 個',
                        style: TextStyle(
                            fontSize: w * 0.045, color: Color(0xffFFFFFF)),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            gap,
            Container(
              height: h * 0.4,
              width: w,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.04,
                  ),
                  SizedBox(
                    height: h * 0.28,
                    width: w * 0.88,
                    child: PageView.builder(
                      // controller: _pageController,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: h * 0.26,
                            width: w * 0.84,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1, 3),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  color: Colors.grey.shade300,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                              ),
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(w * 0.023),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: SvgPicture.asset(
                                        'assets/Star 8.svg',
                                        // height: h * 0.8,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                      onPageChanged: (index) {
                        setState(() {
                          currentCardIndex = index + 1;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: w * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          child: Text(
                            '$currentCardIndex / 2枚目',
                            style: TextStyle(fontSize: w * 0.04),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.04),
                    child: Row(
                      children: [
                        Text(
                          'スタンプ獲得履歴',
                          style: TextStyle(
                              fontSize: w * 0.05, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 0,
                child: ListView.builder(
                  itemCount: 15,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        '2021 / 11 / 18',
                        style:
                            TextStyle(fontSize: w * 0.045, color: Colors.grey),
                      ),
                      subtitle: Text(
                        'スタンプを獲得しました。',
                        style: TextStyle(
                            fontSize: w * 0.045, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text('1 個',
                          style: TextStyle(
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.bold)),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
