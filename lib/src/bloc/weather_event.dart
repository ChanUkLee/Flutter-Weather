import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  WeatherEvent([List props = const []]);
}

class FetchWeather extends WeatherEvent {
  final String cityName;
  final double longitude;
  final double latitude;

  FetchWeather({this.cityName, this.longitude, this.latitude})
      : assert(cityName != null || longitude != null || latitude != null),
        super([cityName, longitude, latitude]);

  @override
  List<Object> get props => [cityName, longitude, latitude];
}

