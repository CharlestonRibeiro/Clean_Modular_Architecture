import 'dart:developer';
import 'package:arquitetura_limpa/src/core/ulrs/urls.dart';
import 'package:arquitetura_limpa/src/data/dto/movies_dto.dart';
import 'package:arquitetura_limpa/src/data/sources/rest_client_interface.dart';
import 'package:arquitetura_limpa/src/domain/entities/movie_entities.dart';
import 'package:arquitetura_limpa/src/domain/interfaces/limit_adult_films_interface.dart';

class MoviesRepository implements LimitAdultFilmsInterface {

  final IRestClient dioClient;

  MoviesRepository(this.dioClient);

  @override
  Future<List<MovieEntities>> getPopularMovies() async {
    try {
      final popularMovies =
          await dioClient.getData(url: Urls.baseUrl + Urls.urlPopularMovies);
      final List<MovieEntities> result = popularMovies['results']
          .map<MoviesDTO>((movieMap) => MoviesDTO.fromMap(movieMap))
          .toList();
      return result;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future <List<MovieEntities>> getTopRetadeMovies() async {
    try {
      final topMovies =
          await dioClient.getData(url: Urls.baseUrl + Urls.urlTopMovies);
      final List<MovieEntities> result = topMovies['results']
          .map<MoviesDTO>((movieMap) => MoviesDTO.fromMap(movieMap))
          .toList();
      return result;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
