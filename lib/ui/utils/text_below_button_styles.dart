import 'package:flutter/material.dart';

class text_below_below_styles extends StatelessWidget {
  const text_below_below_styles({
    Key? key, this.text1, this.text2, required this.ontap,
  }) : super(key: key);

  final String? text1;
  final String? text2;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1!),
        TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero
            ),
            onPressed: ontap,
            child: Text(
              text2!,
              style: const TextStyle(color: Colors.green),
            ))
      ],
    );
  }
  }

