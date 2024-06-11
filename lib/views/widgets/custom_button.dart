import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColre});
  final Color? backgroundColor, textColre;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: () {},
          child: Text(
            'Send Money',
            style:
                AppStyles.styleSemiBold18(context).copyWith(color: textColre),
          )),
    );
  }
}
