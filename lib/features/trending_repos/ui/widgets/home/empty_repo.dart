import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyRepo extends StatelessWidget {
  const EmptyRepo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: .8.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'There are no repositories in this language.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ));
  }
}
