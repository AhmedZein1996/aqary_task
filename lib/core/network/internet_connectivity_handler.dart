import 'package:connectivity_plus/connectivity_plus.dart';

import '../helper/navigator/navigator.dart';
import '../router/app_routes.dart';

void setupInternetConnectivityListener() {
  Connectivity()
      .onConnectivityChanged
      .listen(((List<ConnectivityResult> result) {
    if (!result.contains(ConnectivityResult.none)) {
      AppNavigator.pop();
    } else {
      AppNavigator.pushNamed(AppRoutes.noConnectionRoute);
    }
  }));
}
