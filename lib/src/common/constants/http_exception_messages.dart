class HttpExceptionMessages {
  HttpExceptionMessages._();

  static const String unauthorized401 = 'No tiene autorización. Ingrese nuevamente en el sistema';
  static const String badRequest400 = 'Petición incorrecta. Intentelo más tarde';
  static const String notFound404 = 'Recurso no encontrado. Intentelo más tarde';
  static const String forbidden403 = 'Prohibido acceso al recurso. Intentelo más tarde';
  static const String invalidToken489 = 'Token no válido. Intentelo más tarde';
  static const String serviceUnavailable503 = 'El servicio no esta disponible. Intentelo más tarde';
  static const String internalServerError500 = 'Error interno del servidor. Intentelo más tarde';
}