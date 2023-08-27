import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pilema6/configs/env.dart';
import 'package:pilema6/models/detail_movie.dart';
import 'package:pilema6/utils/const.dart';
import 'package:retrofit/retrofit.dart';

part 'tmdb_apiclient.g.dart';

@RestApi(baseUrl: Const.tmdbBaseUrl)
@injectable
abstract class TmdbApiClient {
  @factoryMethod
  factory TmdbApiClient(Dio dio) = _TmdbApiClient;

  static const String apikey = 'api_key';
  static const String id = 'id';
  static const String appendToResponse = 'append_to_response';

  @GET('movie/{$id}')
  Future<DetailMovie> detailMovie(@Path(id) int movieId,
      {@Query(apikey) String apikey = Env.tmdbApiKey,
      @Query(appendToResponse) String appendToResponse = ''});
}
