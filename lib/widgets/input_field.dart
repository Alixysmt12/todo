import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ui/theme.dart';

class MyInputWidget extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  const MyInputWidget(
      {Key? key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          Container(
            height: 52,
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(child: TextFormField(
                  readOnly: widget==null?false:true,
                  autofocus: false,
                  cursorColor: Get.isDarkMode?Colors.grey[100]:Colors.grey[700],
                  controller: controller,
                  style: subHeadingStyle,
                  decoration: InputDecoration(
                    hintText : hint,
                    //hintStyle: subTitleStyle,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: context.theme.backgroundColor,
                        width: 0
                      )
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: context.theme.backgroundColor,
                            width: 0
                        )
                    ),

                  ),
                )),
                widget == null?Container():Container(child: widget,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
