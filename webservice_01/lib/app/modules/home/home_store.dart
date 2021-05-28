import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import '../../../shared/configs/url_config.dart';
import '../../../shared/models/responses/weather_response.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  String city = 'Curitiba';

  Future<WeatherResponse?> getCity() async {
    WeatherResponse? weather;
    final _dio = Dio(BaseOptions(baseUrl: UrlConfig.baseUrl));
    var path = '/current?access_key=${UrlConfig.apiKey}&query=$city';
    print(UrlConfig.baseUrl + path);

    var response = await _dio.get(path);

    if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
      weather = WeatherResponse.fromJson(response.data);
    }

    return weather;
  }
}
