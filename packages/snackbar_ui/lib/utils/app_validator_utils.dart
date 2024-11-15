class AppValidatorUtils {
  AppValidatorUtils._();

  static const String defaultEmailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  static const String defaultSpecialCharacterPattern =
      r'[!@#$%^&*(),.?":{}|<>]';
  static const String defaultUpperCasePattern = r'[A-Z]';
  static const String defaultPhoneNumberPattern = r'^d{8}$';
  static const String defaultDigitPattern = r'[0-9]';

  static const _requiredEmail = 'El correo es requerido';
  static const _requiredPassword = 'La contraseña es requerida';
  static const String _invalidEmailAddress = 'Dirección de correo no valida';
  static const String _invalidCharacterLength =
      'La contraseña debe contener al menos 6 caracteres';
  static const String _invalidPasswordDigit =
      'La contraseña debe contener al menos un número';
  static const String _requiredSpecialCharacter =
      'La contraseña debe contener al menos un caracter especial';
  static const String _requiredUpperCaseCharacter =
      'La contraseña debe contener al menos un caracter en mayusculas';
  static const String _requiredPhoneNumber = 'El telefono es requerido';
  static const String _invalidPhoneDigitLength =
      'El telefono debe contener al menos 8 digitos';

  static String? validateEmail(String? value,
      {String pattern = defaultEmailPattern}) =>
      switch (value) {
        (String s) when s == null || s.isEmpty => _requiredEmail,
        (String s) when !s.contains(RegExp(pattern)) => _invalidEmailAddress,
        _ => null
      };

  static String? validatePassword(
      String? value, {
        String upperCasePattern = defaultUpperCasePattern,
        String characterPattern = defaultSpecialCharacterPattern,
        String digitPattern = defaultDigitPattern,
      }) =>
      switch (value) {
        (String s) when s == null || s.isEmpty => _requiredPassword,
        (String s) when s.length < 6 => _invalidCharacterLength,
        (String s) when !s.contains(RegExp(characterPattern)) =>
        _requiredSpecialCharacter,
        (String s) when !s.contains(RegExp(defaultUpperCasePattern)) =>
        _requiredUpperCaseCharacter,
        (String s) when !s.contains(RegExp(digitPattern)) =>
        _invalidPasswordDigit,
        _ => null
      };

  static String? validatePhoneNumber(String? value,
      {String numberPhonePattern = defaultPhoneNumberPattern}) =>
      switch (value) {
        (String s) when s == null || s.isEmpty => _requiredPhoneNumber,
        (String s) when !s.contains(RegExp(numberPhonePattern)) =>
        _invalidPhoneDigitLength,
        _ => null
      };
}
