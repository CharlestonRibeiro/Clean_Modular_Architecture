import 'package:arquitetura_limpa/src/domain/entities/movie_entities.dart';

abstract interface class LimitAdultFilmsInterface {
  Future<List<MovieEntities>> getPopularMovies();
  Future<List<MovieEntities>> getTopRetadeMovies();
} 