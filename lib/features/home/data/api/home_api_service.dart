import 'package:dio/dio.dart';
import 'package:doctor_app/features/home/data/api/home_api_constants.dart';
import 'package:doctor_app/features/home/data/models/specialization_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationResponseModel> getSpecialization();
}