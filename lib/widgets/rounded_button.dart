import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/utils/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const RoundedButton({Key? key, required this.label, required this.onPressed, required this.backgroundColor})
      : assert(label != ""),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        child: Text(
          this.label,
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'sans',
              letterSpacing: 1,
              fontWeight: FontWeight.w600),
        ),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
        decoration: BoxDecoration(
            color: this.backgroundColor,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5,)],
            borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: this.onPressed,
    );
  }
}
