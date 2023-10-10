import 'package:arquitetura_limpa/src/data/repositories/movies_repository.dart';
import 'package:arquitetura_limpa/src/domain/entities/movie_entities.dart';
import 'package:arquitetura_limpa/src/domain/use_cases/limit_adult_films.dart';
import 'package:arquitetura_limpa/src/external/client/dio_client.dart';
import 'package:arquitetura_limpa/src/modules/home/home_states.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final popularMovies = <MovieEntities>[].obs;
  final topMovies = <MovieEntities>[].obs;

  final LimitAdultFilms _useCase = LimitAdultFilms(MoviesRepository(DioClient()));

  Rx<PopularMoviesState> popularMoviesState =
      PopularMoviesState.initiaPopularMoviesState.obs;
  Rx<TopMoviesState> topMoviesState = TopMoviesState.initiaTopMoviesState.obs;

  @override
  void onInit() {
    super.onInit();

    searchPopularMovies();
    searchTopMovies();
  }

  @override
  void onReady() async {
    Get.snackbar(
      'Bem-vindo!!!',
      'Carregando...',
      icon: const Icon(Icons.cached_outlined),
    );
    super.onReady();
  }

  Future searchPopularMovies() async {
    popularMoviesState.value = PopularMoviesState.loadingPopularMoviesState;
    try {
      final List<MovieEntities> popularMoviesData = await _useCase.getPopularMovies();
      popularMovies.assignAll(popularMoviesData);
      popularMoviesState.value = PopularMoviesState.successPopularMoviesState;
    } catch (e) {
      popularMoviesState.value = PopularMoviesState.errorPopularMoviesState;
      Get.snackbar(
        'Filmes Populares',
        'Erro',
        snackPosition: SnackPosition.TOP,
        icon: const Icon(Icons.cached_outlined),
        duration: const Duration(seconds: 3),
      );
    }
  }

  Future searchTopMovies() async {
    topMoviesState.value = TopMoviesState.loadingTopMoviesState;
    try {
      final List<MovieEntities> topMoviesData = await _useCase.getTopRetadeMovies();
      topMovies.assignAll(topMoviesData);
      topMoviesState.value = TopMoviesState.successTopMoviesState;
    } catch (e) {
      topMoviesState.value = TopMoviesState.errorTopMoviesState;
      Get.snackbar(
        'Filmes Populares',
        'Erro',
        snackPosition: SnackPosition.TOP,
        icon: const Icon(Icons.cached_outlined),
        duration: const Duration(seconds: 3),
      );
    }
  }
}
