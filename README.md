# weather_app

An example Flutter weather app using the OpenWeatherMap API.

Packages in use
[riverpod](https://pub.dev/packages/riverpod) for state management<br/>
[freezed](https://pub.dev/packages/freezed) for code generation<br/>
[http](https://pub.dev/packages/http) for talking to the REST API<br/>
[cached_network_image](https://pub.dev/packages/cached_network_image) for caching images<br/>
[mocktail](https://pub.dev/packages/mocktail) for testing

Note: to use the API you'll need to register an account  on [OpenWeatherMap](https://openweathermap.org/api) and obtain your own API key. This can be set via --dart-define or inside lib/src/api/api_keys.dart.

For more info, read tutorial:

[Flutter App Architecture: The Repository Pattern](https://codewithandrea.com/articles/flutter-repository-pattern/) 

For help getting started with Flutter, view our [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.
