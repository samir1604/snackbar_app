import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'src/app.dart';
import 'src/core/models/environment.dart';
import 'src/core/remote/bad_certifcate_override.dart';
import 'src/core/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = BadCertificateOverride();
  await dotenv.load(fileName: Environment.fileName);
  initServiceLocator();
  runApp(const App());
}
