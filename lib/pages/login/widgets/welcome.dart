import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/utils/app_colors.dart';
import '../../../utils/responsive.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return AspectRatio(
      aspectRatio: 16 / 11,
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Container(
            child: Stack(
              children: [
                Positioned(
                    top: constraints.maxHeight * 0.70,
                    child: Column(
                      children: [
                        Container(
                          height: 3,
                          width: constraints.maxWidth,
                          color: Color(0xffeeeeee),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Bienvenido de nuevo!",
                          style: TextStyle(
                            fontSize: responsive.ip(2),
                            fontWeight: FontWeight.w300,
                            fontFamily: 'sans',
                            color: AppColors.secondary
                          ),
                        )
                      ],
                    )),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/pages/login/ride.svg',
                    height: constraints.maxHeight * 0.7,
                  ),
                ),
                Positioned(
                  top: constraints.maxHeight * 0.20,
                  left: 5,
                  child: SvgPicture.asset(
                    'assets/pages/login/developer.svg',
                    width: constraints.maxWidth * 0.34,
                  ),
                ),
                Positioned(
                  top: constraints.maxHeight * 0.03,
                  right: 5,
                  child: SvgPicture.asset(
                    'assets/pages/login/thing.svg',
                    width: constraints.maxWidth * 0.35,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
