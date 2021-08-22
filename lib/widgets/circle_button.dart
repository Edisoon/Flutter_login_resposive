import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButton extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final String iconPath;
  const CircleButton({Key? key, this.size = 50, this.backgroundColor=Colors.blueAccent, required this.iconPath}) 
    : assert(iconPath!=""), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      padding: EdgeInsets.all(15),
      child: SvgPicture.asset(iconPath,color: Colors.white,),
      decoration: BoxDecoration(
        color: this.backgroundColor,
        shape: BoxShape.circle,
      ),
    );
  }
}