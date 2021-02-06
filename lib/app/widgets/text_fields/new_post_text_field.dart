import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class NewPostTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onChanged;
  final String hint;
  final TextInputType textInputType;
  final String textInfo;
  final int maxText;

  NewPostTextField(
      {this.controller,
        this.hint,
        this.onChanged,
        this.textInputType,
        this.textInfo,
        this.maxText});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * .9,
          height: 170,
          decoration: BoxDecoration(
            color: AppColorScheme.txtColorLight,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:TextField(
            textAlignVertical: TextAlignVertical.top,
            onChanged: onChanged,
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            keyboardType: textInputType,
            maxLength: maxText,
            maxLines: 10,
            minLines: 1,
          ),

        ),
        Text(
          textInfo ?? "",
          style: TextStyle(color: AppColorScheme.txtColorSecondary, fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        )
      ],
    );
  }
}
