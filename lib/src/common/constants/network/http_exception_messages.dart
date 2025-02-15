final class HttpStatusMessages {
  const HttpStatusMessages._();

  /// Dio Errors
  static const String connectionTimeout_406 = 'No se pudo conectar al servidor dentro del tiempo límite.';
  static const String sendTimeout_407 = 'No se enviaron los datos a tiempo.';
  static const String receiveTimeout_408 = 'La respuesta del servidor tardó demasiado.';
  static const String badCertificate_401 = 'Error de certificado SSL.';
  static const String cancel_402 = 'Petición cancelada antes de completarse.';
  static const String connectionError_400 = 'No hay conexión a Internet o servidor inalcanzable.';
  static const String unknown_500 = 'Error inesperado.';

  /// Clients Errors
  static const String badRequest400 = 'El servidor no pudo interpretar la solicitud dada una sintaxis inválida.';
  static const String unauthorized401 = 'Es necesario autenticar para obtener la respuesta solicitada.';
  static const String forbidden403 = 'El cliente no posee los permisos necesarios para cierto contenido';
  static const String notFound404 = 'El servidor no pudo encontrar el contenido solicitado.';
  static const String methodNotAllowed405 = 'El método solicitado es conocido por el servidor pero ha sido deshabilitado y no puede ser utilizado.';
  static const String requestTimeout408 = 'El servidor quiere desconectar esta conexión sin usar.';
  static const String conflict409 = 'La petición tiene conflicto con el estado actual del servidor.';
  static const String invalidToken498 = 'El token no es válido.';

  /// Server Errors
  static const String internalServerError500 = 'El servidor ha encontrado una situación que no sabe cómo manejarla.';
  static const String notImplemented501 = 'El método solicitado no está soportado por el servidor y no puede ser manejado.';
  static const String badGateway502 = 'El servidor obtuvo una respuesta no válida.';
  static const String serviceUnavailable503 = 'El servidor no está listo para manejar la petición.';
}