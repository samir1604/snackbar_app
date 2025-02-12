import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'src/app.dart';
import 'src/core/models/environment.dart';
import 'src/core/service_locator.dart';

Future<void> main() async {

  await dotenv.load(fileName: Environment.fileName);

  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  runApp(const App());
}
