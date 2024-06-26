import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_task/core/exports/exports.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double height;
  final double? width;
  final double textSize;
  final double padding;
  final double borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final bool capitalize;
  final bool hasBorderRadius;
  final IconData? icon;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.height = 40.0,
    this.width,
    this.borderRadius = 10.0,
    this.padding = 8.0,
    this.backgroundColor = AppColors.appWhiteColor,
    this.capitalize = false,
    this.textSize = 18.0,
    this.textColor = AppColors.appWhiteColor,
    this.hasBorderRadius = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? 1.sw,
      child: icon == null
          ? ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  onPressed != null ? backgroundColor : AppColors.appGreyColor,
                ),
                shape: hasBorderRadius
                    ? WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      )
                    : WidgetStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.all(padding),
                ),
              ),
              child: Text(
                capitalize ? text.toUpperCase() : text,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                ),
              ),
            )
          : ElevatedButton.icon(
              icon: Icon(
                icon,
                color: textColor,
              ),
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(backgroundColor),
                shape: hasBorderRadius
                    ? WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      )
                    : WidgetStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.all(padding),
                ),
              ),
              label: Text(
                capitalize ? text.toUpperCase() : text,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                ),
              ),
            ),
    );
  }
}
