import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_task/features/trending_repos/logic/trending_repo/trending_repo_bloc.dart';

import '../../features/trending_repos/ui/pages/home_view.dart';
import '../exports/exports.dart';
import '../helper/di/di.dart';
import '../widgets/no_internet_screen.dart';
import 'app_routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) =>
                    getIt<TrendingRepoBloc>()..add(GetTrendingRepoEvent()),
                child: const HomeScreen()),
            settings: settings);
      case AppRoutes.noConnectionRoute:
        return MaterialPageRoute(
            builder: (_) => const NoInternetScreen(), settings: settings);

      default:
        return null;
    }
  }
}
