import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_task/core/exports/exports.dart';

import 'custom_elevated_button.dart';

class FailureWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const FailureWidget({
    super.key,
    required this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: SizedBox(
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16.0,
            ),
            if (onRetry != null)
              CustomElevatedButton(
                onPressed: onRetry,
                text: 'Retry',
                width: .8.sw,
                backgroundColor: AppColors.appRedColor,
                height: 35,
                icon: Icons.refresh,
                capitalize: true,
              ),
          ],
        ),
      ),
    );
  }
}
