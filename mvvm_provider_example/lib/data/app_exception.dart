class AppException implements Exception{
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString(){
    return'$_prefix$_message';

  }

}
class FetchDataException extends AppException{
  FetchDataException([String? message]): super(message,'Error during Communication ');
}
class BadRequestException extends AppException{
  BadRequestException([String? message]): super(message,'Error during Bad Request ');
}
class UnAuthorisedException extends AppException{
  UnAuthorisedException([String? message]): super(message,'UnAuthorised Request ');
}
class InvalidInputException extends AppException{
  InvalidInputException([String? message]): super(message,'Invalid InputException Request ');
}