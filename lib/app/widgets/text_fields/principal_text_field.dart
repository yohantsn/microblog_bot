import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class PrincipalTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onChanged;
  final String hint;
  final TextInputType textInputType;
  final Icon icon;
  final bool obscure;
  final String errorTxt;

  PrincipalTextField(
      {this.controller,
      this.hint,
      this.onChanged,
      this.textInputType,
      this.icon,
      this.obscure,
      this.errorTxt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * .85,
          height: 60,
          decoration: BoxDecoration(
            color: AppColorScheme.txtColorLight,
            border: Border.all(
              color: errorTxt != null && errorTxt.isNotEmpty ? Colors.red : Colors.transparent,
              width: 1
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:TextField(
            textAlignVertical: TextAlignVertical.center,
            onChanged: onChanged,
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              prefixIcon: icon,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            keyboardType: textInputType,
            obscureText: obscure ?? false,
          ),

        ),
        Text(
          errorTxt ?? "",
          style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.w800),
          textAlign: TextAlign.start,
        )
      ],
    );
  }
}
