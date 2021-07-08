import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    shadowColor: Colors.white,
    title: Container(
        child: Row(
      children: <Widget>[
        Image.asset(
          "assets/images/logo.png",
          height: 50,
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "ChitChat",
          style: TextStyle(
            fontSize: 27,
            color: Color(0xE233B7EC),
          ),
        )
      ],
    )),
    backgroundColor: Colors.white,
  );
}

InputDecoration textBoxStyle(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    )
  );
}
