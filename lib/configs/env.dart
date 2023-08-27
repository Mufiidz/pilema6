import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'TMDB_APIKEY')
  static const String tmdbApiKey = _Env.tmdbApiKey;

  @EnviedField(varName: 'TMDB_API_TOKEN')
  static const String tmdbToken = _Env.tmdbToken;
}
