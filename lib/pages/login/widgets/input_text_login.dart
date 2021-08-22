import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:my_app/utils/responsive.dart';


class InputTextLogin extends StatelessWidget {
  final String placeholder;
  final IconData iconData;
  final bool obscureText;
  const InputTextLogin(
    {Key? key, required this.iconData, required this.placeholder, required this.obscureText}) 
  :assert(iconData !=null && placeholder !="" && obscureText !=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    
    return CupertinoTextField(
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 7),
      prefix: Container(
        width: 40,
        height: 30,
        padding: EdgeInsets.all(1),
        child: Icon(this.iconData,
          color: AppColors.gray,
          size: responsive.ip(1.8),
        ),
      ),
      placeholder: this.placeholder,
      style: TextStyle(fontFamily: 'sans'),
      placeholderStyle: TextStyle(fontFamily: 'sans',color: AppColors.gray),
      obscureText: this.obscureText,
      
      cursorColor: AppColors.primary,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: AppColors.gray,
          ),
        ),
      ),
    );
  }
}
