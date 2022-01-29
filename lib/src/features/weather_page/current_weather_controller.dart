

import 'package:apiflutter/src/entities/weather/weather_data.dart';
import 'package:apiflutter/src/repositories/api_error.dart';
import 'package:apiflutter/src/repositories/weather_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentWeatherController extends StateNotifier<AsyncValue<WeatherData>> {
  CurrentWeatherController(this._weatherRepository, {required String city})
      : super(const AsyncValue.loading()) {
    getWeather(city: city);
  }
  final HttpWeatherRepository _weatherRepository;

  Future<void> getWeather({required String city}) async {
    try {
      state = const AsyncValue.loading();
      final weather = await _weatherRepository.getWeather(city: city);
      state = AsyncValue.data(WeatherData.from(weather));
    } on APIError catch (e) {
      state = e.asAsyncValue();
    }
  }
}

final currentWeatherControllerProvider = StateNotifierProvider.autoDispose
    .family<CurrentWeatherController, AsyncValue<WeatherData>, String>(
        (ref, city) {
  final weatherRepository = ref.watch(weatherRepositoryProvider);
  return CurrentWeatherController(weatherRepository, city: city);
});
