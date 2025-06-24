import 'package:dio/dio.dart';
import 'package:doctor_app/core/helpers/shared_preference.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static Dio? dio;

  DioFactory._();

  static Dio gitDio()  {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      return dio!;
    }else{
      return dio!;
    }
  }

  static void addDioHeader() async{
    dio?.options.headers = {
      'Accept' : 'application/json',
      'Authorization' : 'Bearer ${await SharedPrefController().getSecureString(PrefKeys.userToken)}'
    };
  }

  static void setTokenAfterLogin(String token){
    dio?.options.headers = {
      'Authorization' : 'Bearer $token'
    };
  }

  static void addDioInterceptor(){
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true
      ),
    );
  }
}
