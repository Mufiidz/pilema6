import 'package:injectable/injectable.dart';
import 'package:pilema6/data/tmdb_apiclient.dart';
import 'package:pilema6/models/data_result.dart';
import 'package:pilema6/models/detail_movie.dart';
import 'package:pilema6/utils/retrofit_ext.dart';

abstract class MovieRepository {
  Future<BaseResult<DetailMovie>> getDetailMovie(int id);
}

@Injectable(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository {
  final TmdbApiClient _apiClient;

  MovieRepositoryImpl(this._apiClient);

  @override
  Future<BaseResult<DetailMovie>> getDetailMovie(int id) =>
      _apiClient.detailMovie(id).awaitResponse;
}
