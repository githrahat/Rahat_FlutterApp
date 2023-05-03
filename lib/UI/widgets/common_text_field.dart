

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CommonTextField extends StatelessWidget {
  CommonTextField({
    Key? key, required this.controller, required this.validator, this.textInputType, required this.hinttext,
  }) : super(key: key);

  final TextEditingController controller;
  final Function(String?) validator;
  final String hinttext;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      keyboardType: textInputType,
      decoration:  InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(
            color: softgreyColor,
          ),
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4
          ),
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 2),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2)
          )
      ),
    );
  }
}
