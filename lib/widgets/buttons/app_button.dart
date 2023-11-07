import 'package:digihiro/configs/app.dart';
import 'package:digihiro/configs/configs.dart';
import 'package:flutter/material.dart';

enum ButtonVariant {
  filled,
  bordered,
}

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final ButtonVariant variant;
  const AppButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.variant = ButtonVariant.filled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final isFilled = variant == ButtonVariant.filled;

    return Container(
      decoration: BoxDecoration(
        color: isFilled ? AppTheme.c!.primary : Colors.white,
        border: Border.all(
          color: !isFilled ? AppTheme.c!.primary! : Colors.transparent,
          width: 2.0,
        ),
        borderRadius: UIProps.buttonRadius,
        boxShadow: UIProps.cardShadow,
      ),
      height: AppDimensions.size!.height * 0.065,
      width: AppDimensions.size!.width * 0.125,
      child: Center(
        child: Text(
          label,
          style: AppText.b2!.cl(isFilled ? Colors.white : Colors.black).w(5),
        ),
      ),
    );
  }
}
