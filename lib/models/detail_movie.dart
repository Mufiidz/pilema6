import 'package:dart_mappable/dart_mappable.dart';

part 'detail_movie.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class DetailMovie with DetailMovieMappable {
  final bool adult;
  final String backdropPath;
  final List<Genre> genres;
  final String homepage;
  final int id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final int runtime;
  final List<SpokenLanguage> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  const DetailMovie({
    this.adult = false,
    this.backdropPath = '',
    this.genres = const [],
    this.homepage = '',
    this.id = 0,
    this.imdbId = '',
    this.originalLanguage = '',
    this.originalTitle = '',
    this.overview = '',
    this.popularity = 0,
    this.posterPath = '',
    this.releaseDate = '',
    this.runtime = 0,
    this.spokenLanguages = const [],
    this.status = '',
    this.tagline = '',
    this.title = '',
    this.video = false,
    this.voteAverage = 0,
    this.voteCount = 0,
  });

  factory DetailMovie.fromJson(dynamic json) {
    if (json is Map<String, dynamic>) return DetailMovieMapper.fromMap(json);
    if (json is String) return DetailMovieMapper.fromJson(json);
    return throw Exception(
        'The argument type \'${json.runtimeType}\' can\'t be assigned');
  }
}

@MappableClass()
class Genre with GenreMappable {
  int id;
  String name;

  Genre({
    this.id = 0,
    this.name = '',
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SpokenLanguage with SpokenLanguageMappable {
  String englishName;
  String iso6391;
  String name;

  SpokenLanguage({
    this.englishName = '',
    this.iso6391 = '',
    this.name = '',
  });
}
