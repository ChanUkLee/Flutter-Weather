import 'package:flutter_weather/src/model/weather.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class WeatherState extends Equatable {
  WeatherState([List props = const []]);
}

class WeatherEmpty extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoading extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded({@required this.weather})
      : assert(weather != null),
        super([weather]);

  @override
  List<Object> get props => [weather];
}

class WeatherError extends WeatherState {
  final int errorCode;

  WeatherError({@required this.errorCode})
      : assert(errorCode != null),
        super([errorCode]);

  @override
  List<Object> get props => [errorCode];
}
