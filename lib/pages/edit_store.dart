import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jitak_non_getex/widgets/custom_checkbox.dart';
import 'package:jitak_non_getex/widgets/custom_req.dart';
import 'package:jitak_non_getex/widgets/custom_snackbar.dart';
import 'package:jitak_non_getex/widgets/custom_txtfield.dart';
import 'package:svg_flutter/svg.dart';

import '../home.dart';

class EditStore extends StatefulWidget {
  const EditStore({super.key});

  @override
  State<EditStore> createState() => _EditStoreState();
}

class _EditStoreState extends State<EditStore> {
  List images = [
    'assets/store.jpg',
    'assets/store.jpg',
  ];
  List food = [
    'assets/iceCream.jpg',
    'assets/candadry.png',
    'assets/COC.png',
  ];
  List inStore = [
    'assets/in-store.jpg',
    'assets/in-store.jpg',
    'assets/in-store.jpg',
  ];
  List menu = [
    'assets/menu.jpg',
    'assets/menu.jpg',
    'assets/menu.jpg',
  ];
  String selectedTime = '12:00';
  TextEditingController storeName = TextEditingController(text: 'Mer キッチン');
  TextEditingController representativeName =
      TextEditingController(text: '林田　絵梨花');
  TextEditingController storePhoneNumber =
      TextEditingController(text: '123 - 4567 8910');
  TextEditingController storeAddress =
      TextEditingController(text: '大分県豊後高田市払田791-13');
  TextEditingController rateController = TextEditingController(text: '¥ 1,000');
  TextEditingController rateController2 =
      TextEditingController(text: '¥ 2,000');
  TextEditingController catchCopy =
      TextEditingController(text: '美味しい！リーズナブルなオムライスランチ！');
  TextEditingController noOfSeat = TextEditingController(text: '40席');
  TextEditingController nameOfStorev =
      TextEditingController(text: 'いちごクリームアイスクリーム, ジュース');

  List<bool> isCheckedList = [false, false, false, false];

  final int maxImages = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          shadowColor: const Color(0xffE8E8E8),
          backgroundColor: const Color(0xffFFFFFF),

          // backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(
                  CupertinoIcons.back,
                  size: w * 0.07,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          title: Text(
            '店舗プロフィール編集',
            style: TextStyle(fontSize: w * 0.04, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Stack(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.snackbar('近日公開...', "近日公開...",
                          backgroundColor: const Color(0xffFFC8AB));
                    },
                    child:
                        SvgPicture.asset('assets/bell.svg', height: h * 0.04)),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: const Color(0xffEE7D42),
                    child: Center(
                        child: Text(
                      '9+',
                      style: TextStyle(fontSize: w * 0.03, color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
            SizedBox(
              width: w * 0.05,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              customTxtReq('店舗名'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                child: CustomTxtField(
                  label: '店舗名',
                  controller: storeName,
                ),
              ),
              customTxtReq('代表担当者名'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                child: CustomTxtField(
                  label: '代表担当者名',
                  controller: representativeName,
                ),
              ),
              customTxtReq('店舗電話番号'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                child: CustomTxtField(
                  label: '店舗電話番号',
                  controller: storePhoneNumber,
                ),
              ),
              customTxtReq('店舗住所'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                child: CustomTxtField(
                  label: '店舗住所',
                  controller: storeAddress,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: h * 0.28,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://media.wired.com/photos/59269cd37034dc5f91bec0f1/master/pass/GoogleMapTA.jpg',
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              customTxtReqWithEx('店舗外観', '（最大3枚まで）'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                child: SizedBox(
                  height: h * 0.15,
                  width: double.infinity,
                  child: Row(
                    children: [
                      for (int index = 0; index < maxImages; index++)
                        if (index < images.length)
                          Padding(
                            padding: EdgeInsets.only(
                                left: w * 0.03, right: w * 0.03),
                            child: Stack(
                              children: [
                                Container(
                                  height: h * 0.11,
                                  width: w * 0.24,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                const Positioned(
                                  right: 2,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        else
                          DottedBorder(
                            borderPadding: const EdgeInsets.all(6),
                            color: const Color(0xff9C9896),
                            strokeWidth: 0.5,
                            radius: const Radius.circular(10),
                            child: Container(
                              height: h * 0.11,
                              width: w * 0.24,
                              decoration: const BoxDecoration(),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            'assets/outline-image.png')),
                                    Text(
                                      '写真を追加',
                                      style: TextStyle(fontSize: w * 0.035),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
              customTxtReqWithEx('店舗内観', '（1枚〜3枚ずつ追加してください）'),
              customListImage(inStore),
              customTxtReqWithEx('料理写真', '（1枚〜3枚ずつ追加してください）'),
              customListImage(food),
              customTxtReqWithEx('メニュー写真', '（1枚〜3枚ずつ追加してください）'),
              customListImage(menu),
              customTxtReq('営業時間'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.05,
                        width: w * 0.35,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffC7C4C0)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: w * 0.04),
                            Expanded(
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Icon(
                                    Icons.expand_more_rounded,
                                    color: Color(0xffC7C4C0),
                                  ),
                                ),
                                value: selectedTime,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedTime = newValue!;
                                  });
                                },
                                items: List.generate(24, (index) {
                                  final hour = index.toString().padLeft(2, '0');
                                  return DropdownMenuItem<String>(
                                    value: '$hour:00',
                                    child: Text('$hour:00'),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                        child: const SizedBox(
                          child: Text('~'),
                        ),
                      ),
                      Container(
                        height: h * 0.05,
                        width: w * 0.35,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffC7C4C0)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: w * 0.04),
                            Expanded(
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Icon(
                                    Icons.expand_more_rounded,
                                    color: Color(0xffC7C4C0),
                                  ),
                                ),
                                value: selectedTime,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedTime = newValue!;
                                  });
                                },
                                items: List.generate(24, (index) {
                                  final hour = index.toString().padLeft(2, '0');
                                  return DropdownMenuItem<String>(
                                    value: '$hour:00',
                                    child: Text('$hour:00'),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              customTxtReq('ランチ時間'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.05,
                        width: w * 0.35,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffC7C4C0)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: w * 0.04),
                            Expanded(
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Icon(
                                    Icons.expand_more_rounded,
                                    color: Color(0xffC7C4C0),
                                  ),
                                ),
                                value: selectedTime,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedTime = newValue!;
                                  });
                                },
                                items: List.generate(24, (index) {
                                  final hour = index.toString().padLeft(2, '0');
                                  return DropdownMenuItem<String>(
                                    value: '$hour:00',
                                    child: Text('$hour:00'),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                        child: const SizedBox(
                          child: Text('~'),
                        ),
                      ),
                      Container(
                        height: h * 0.05,
                        width: w * 0.35,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffC7C4C0)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: w * 0.04),
                            Expanded(
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Icon(
                                    Icons.expand_more_rounded,
                                    color: Color(0xffC7C4C0),
                                  ),
                                ),
                                value: selectedTime,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedTime = newValue!;
                                  });
                                },
                                items: List.generate(24, (index) {
                                  final hour = index.toString().padLeft(2, '0');
                                  return DropdownMenuItem<String>(
                                    value: '$hour:00',
                                    child: Text('$hour:00'),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CheckboxRow(
                labels: const ['月', '火', '水', '木'],
                noOfBox: 4,
              ),
              CheckboxRow(
                labels: const ['金', '土', '日', '祝'],
                noOfBox: 4,
              ),
              customTxtReq('料理カテゴリー'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.05,
                        width: w * 0.6,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffC7C4C0)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: w * 0.04),
                            Expanded(
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Icon(
                                    Icons.expand_more_rounded,
                                    color: Color(0xffC7C4C0),
                                  ),
                                ),
                                value: '料理カテゴリー選択',
                                onChanged: (String? newValue) {},
                                items: const [
                                  DropdownMenuItem<String>(
                                    value: '料理カテゴリー選択',
                                    child: Text('料理カテゴリー選択'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              customTxtReq('予算'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomTxtField(
                              controller: rateController, label: '')),
                      SizedBox(
                        width: w * 0.08,
                        child: Center(
                            child: Text(
                          '~',
                          style: TextStyle(fontSize: w * 0.04),
                        )),
                      ),
                      Expanded(
                          child: CustomTxtField(
                              controller: rateController2, label: '')),
                      SizedBox(
                        width: w * 0.2,
                      ),
                    ],
                  ),
                ),
              ),
              customTxtReq('キャッチコピー'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                child: CustomTxtField(
                  label: 'キャッチコピー',
                  controller: catchCopy,
                ),
              ),
              customTxtReq('座席数'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                child: CustomTxtField(
                  label: '座席数',
                  controller: noOfSeat,
                ),
              ),
              customTxtReq('喫煙席'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: w * 0.5,
                    child: CheckboxRow(
                      labels: const ['有', '無'],
                      noOfBox: 2,
                    ),
                  ),
                ],
              ),
              customTxtReq('駐車場'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: w * 0.5,
                    child: CheckboxRow(
                      labels: const ['有', '無'],
                      noOfBox: 2,
                    ),
                  ),
                ],
              ),
              customTxtReq('来店プレゼント'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: w * 0.2,
                    child: CheckboxRow(
                      labels: const ['有'],
                      noOfBox: 1,
                    ),
                  ),
                  Text(
                    '（最大３枚まで）',
                    style: TextStyle(color: Colors.black54, fontSize: w * 0.04),
                  ),
                  SizedBox(
                    width: w * 0.2,
                    child: CheckboxRow(
                      labels: const ['無'],
                      noOfBox: 1,
                    ),
                  ),
                ],
              ),
              customListImage(food),
              customTxtReq('来店プレゼント名'),
              Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                child: CustomTxtField(
                  label: '座席数',
                  controller: nameOfStorev,
                ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              // CustomButton(label: '', onPressed: () {}, width: double.infinity)
              Padding(
                padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                child: InkWell(
                  onTap: () {
                    Get.snackbar("近日公開...", "近日公開...",
                        backgroundColor: const Color(0xffFFC8AB));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            colors: [Color(0xffEE7D42), Color(0xffFFC8AB)])),
                    child: const Center(
                        child: Text(
                      '編集を保存',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
