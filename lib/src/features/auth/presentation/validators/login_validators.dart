import '../../../../common/common.dart';

class LoginValidators {
  static String? userValidator(String? value) {
    if (value == null || value.isEmpty) {
      return TextStrings.emptyUsername;
    }

    if (value != null && value!.length <= 3) {
      return TextStrings.notValidUsername;
    }
    return null;
  }

  static String? passValidator(String? value) {
    if (value == null || value.isEmpty) {
      return TextStrings.emptyPassword;
    }

    if (value != null && value!.length <= 3) {
      return TextStrings.notValidPassword;
    }
    return null;
  }
}
