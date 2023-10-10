import 'package:arquitetura_limpa/src/data/repositories/movies_repository.dart';
import 'package:arquitetura_limpa/src/domain/use_cases/limit_adult_films.dart';
import 'package:arquitetura_limpa/src/external/client/dio_client.dart';
import 'package:arquitetura_limpa/src/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeModule implements Bindings {
  @override
  void dependencies() {
    Get.put(LimitAdultFilms(MoviesRepository(DioClient())));
    Get.put(HomeController());
  }
}