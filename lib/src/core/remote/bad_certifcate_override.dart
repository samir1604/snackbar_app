import 'dart:io';

import '../../common/common.dart';

class BadCertificateOverride extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (cert, host, port) => NetworkSettings.baseUrl.contains(host);
  }
}
