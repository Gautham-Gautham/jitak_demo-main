import 'package:flutter/material.dart';

import '../home.dart';

customTxtReq(final String txt) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Text(
            txt,
            style: TextStyle(fontSize: w * 0.05),
          ),
          Text(
            '*',
            style: TextStyle(color: Colors.red, fontSize: w * 0.05),
          ),
        ],
      ),
    ),
  );
}

customTxtReqWithEx(final String txt, String txt2) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Text(
            txt,
            style: TextStyle(fontSize: w * 0.035),
          ),
          Text(
            '*',
            style: TextStyle(color: Colors.red, fontSize: w * 0.05),
          ),
          Text(
            txt2,
            style: TextStyle(color: Color(0xff9C9896), fontSize: w * 0.04),
          )
        ],
      ),
    ),
  );
}

customListImage(List listName) {
  return Padding(
    padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
    child: SizedBox(
      height: h * 0.15,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: h * 0.11,
                  width: w * 0.24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(listName[index]),
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
          );
        },
      ),
    ),
  );
}
