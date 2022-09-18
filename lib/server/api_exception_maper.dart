import 'package:core_mvc/utils/string/string.dart';
import 'api_exception.dart';
abstract class ApiExceptionMaper{
  static String toErrorMessage(Object error){
    if(error == ApiException){
      if(error == ConnectionException){
        return Strings.connectionerror;
      } else if(error == ClientErrorException){
        return Strings.clientError;
      } else if(error == ServerErrorException){
        return Strings.servererror;
      } else if(error == EmptyResultException){
        return Strings.emptyResultError;
      } else {
        return Strings.unknownError;
      }
    } else{
      return Strings.unknownError;
    }
  }
}