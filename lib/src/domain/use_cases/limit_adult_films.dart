import 'package:arquitetura_limpa/src/data/repositories/movies_repository.dart';
import 'package:arquitetura_limpa/src/domain/entities/movie_entities.dart';
import 'package:arquitetura_limpa/src/domain/interfaces/limit_adult_films_interface.dart';

class LimitAdultFilms implements LimitAdultFilmsInterface {
  final MoviesRepository repository;

  LimitAdultFilms(this.repository);

  @override
  Future<List<MovieEntities>> getPopularMovies() async {
    final result = await repository.getPopularMovies();
    return result.where((e) => e.adult == false).toList();
  }

  @override
  Future<List<MovieEntities>> getTopRetadeMovies() async {
    final result = await repository.getTopRetadeMovies();
    return result.where((e) => e.adult == false).toList();
  }
}
