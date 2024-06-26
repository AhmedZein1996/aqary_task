import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../di/di.dart';

Future initializeApp() async {
  await initHiveForFlutter();
  //Initializing getIt dependencies
  await initializeDependencies();

  //Loading .env file
  await dotenv.load(fileName: ".env");
}
