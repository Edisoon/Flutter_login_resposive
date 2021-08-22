import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/login/widgets/input_text_login.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:my_app/utils/responsive.dart';
import 'package:my_app/widgets/circle_button.dart';
import 'package:my_app/widgets/rounded_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SafeArea(
      child: Container(
        width: responsive.ip(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputTextLogin(
              iconData: Icons.alternate_email_outlined,
              placeholder: 'Email',
              obscureText: false,
            ),
            SizedBox(
              height: responsive.ip(2),
            ),
            InputTextLogin(
              iconData: Icons.password_outlined,
              placeholder: 'Contraseña',
              obscureText: true,
            ),
            SizedBox(
              height: responsive.ip(1.5),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: CupertinoButton(
                padding: EdgeInsets.symmetric(vertical: responsive.ip(1.5)),
                child: Text(
                  "Olvidaste tu Contraseña?",
                  style: TextStyle(
                      fontFamily: 'sans',
                      fontSize: responsive.ip(1.1),
                      color: AppColors.primary),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: responsive.ip(1.5),
            ),
            RoundedButton(
                label: "Inciar Sesion",
                backgroundColor: AppColors.primary,
                onPressed: () {}),
            SizedBox(
              height: responsive.ip(3.5),
            ),
            Text("Logeate con"),
            SizedBox(
              height: responsive.ip(1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleButton(
                  iconPath: 'assets/pages/login/icons/github-big-logo.svg',
                  size: 60,
                  backgroundColor: Color(0xff333333),
                ),
                SizedBox(
                  width: responsive.ip(1),
                ),
                CircleButton(
                    iconPath: 'assets/pages/login/icons/google.svg',
                    size: 60,
                    backgroundColor: Color(0xffea4335)),
                SizedBox(
                  width: responsive.ip(1),
                ),
                CircleButton(
                    iconPath: 'assets/pages/login/icons/facebook.svg',
                    size: 60,
                    backgroundColor: Color(0xff1877f2)),
              ],
            ),
            SizedBox(height: responsive.ip(5),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No tienes cuenta?'),
                CupertinoButton(child: Text('Registrate',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'sans'),), onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
