// import 'package:dio/dio.dart' hide Headers;
// import 'package:retrofit/retrofit.dart';

// import 'configs/url_config.dart';
// import 'models/responses/weather_response.dart';

// part 'rest_client.g.dart';

// @RestApi(baseUrl: UrlConfig.baseUrl)
// abstract class RestClient {
//   factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

//   @GET('/weather/{city}')
//   Future<WeatherResponse> getFormTemplateById(@Path() String city);
// }
