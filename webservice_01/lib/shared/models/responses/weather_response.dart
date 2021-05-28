import 'package:json_annotation/json_annotation.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  RequestResponse request;
  LocationResponse location;
  CurrentResponse current;

  WeatherResponse({
    required this.request,
    required this.location,
    required this.current,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}

@JsonSerializable()
class RequestResponse {
  String? type;
  String? query;
  String? language;
  String? unit;

  RequestResponse({
    this.type,
    this.query,
    this.language,
    this.unit,
  });

  factory RequestResponse.fromJson(Map<String, dynamic> json) => _$RequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RequestResponseToJson(this);
}

@JsonSerializable()
class LocationResponse {
  String? name;
  String? country;
  String? region;
  String? lat;
  String? lon;
  String? timezoneId;
  String? localtime;
  int? localtimeEpoch;
  String? utcOffset;

  LocationResponse({
    this.name,
    this.country,
    this.region,
    this.lat,
    this.lon,
    this.timezoneId,
    this.localtime,
    this.localtimeEpoch,
    this.utcOffset,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) => _$LocationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}

@JsonSerializable()
class CurrentResponse {
  String? observationTime;
  int? temperature;
  int? weatherCode;
  List<String>? weatherIcons;
  List<String>? weatherDescriptions;
  int? windSpeed;
  int? windDegree;
  String? windDir;
  int? pressure;
  int? precip;
  int? humidity;
  int? cloudcover;
  int? feelslike;
  int? uvIndex;
  int? visibility;

  CurrentResponse({
    this.observationTime,
    this.temperature,
    this.weatherCode,
    this.weatherIcons,
    this.weatherDescriptions,
    this.windSpeed,
    this.windDegree,
    this.windDir,
    this.pressure,
    this.precip,
    this.humidity,
    this.cloudcover,
    this.feelslike,
    this.uvIndex,
    this.visibility,
  });

  factory CurrentResponse.fromJson(Map<String, dynamic> json) => _$CurrentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentResponseToJson(this);
}
