import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'core/constants/app_strings.dart';
import 'core/helper/di/di.dart';
import 'core/helper/init_app/init_app.dart';
import 'core/network/internet_connectivity_handler.dart';
import 'core/router/app_router.dart';
import 'core/styling/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize app
  await initializeApp();
  runApp(GithubTask(appRouter: AppRouter()));
  setupInternetConnectivityListener();
}

final navigatorKey = GlobalKey<NavigatorState>();

class GithubTask extends StatefulWidget {
  final AppRouter appRouter;
  const GithubTask({super.key, required this.appRouter});

  @override
  State<GithubTask> createState() => _GithubTaskState();
}

class _GithubTaskState extends State<GithubTask> {
  ValueNotifier<GraphQLClient>? client;

  @override
  void initState() {
    client = ValueNotifier(getIt<GraphQLClient>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 852),
      splitScreenMode: true,
      fontSizeResolver: FontSizeResolvers.height,
      child: GraphQLProvider(
        client: client,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          onGenerateRoute: widget.appRouter.generateRoute,
          title: AppStrings.appTitle,
          theme: AppThemes.defaultTheme,
        ),
      ),
    );
  }
}
