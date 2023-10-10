import 'dart:convert';

import 'package:arquitetura_limpa/src/domain/entities/movie_entities.dart';

class MoviesDTO implements MovieEntities{
  @override
  final num id;
  @override
  final String title;
  @override
  final String releaseDate;
  @override
  final String posterPath;
  @override
  final bool adult;
  @override
  final bool favorite;
  MoviesDTO({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.posterPath,
    required this.adult,
    required this.favorite,
  });



  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'release_date': releaseDate,
      'poster_path': posterPath,
      'adult': adult,
      'favorite': favorite,
    };
  }

  factory MoviesDTO.fromMap(Map<String, dynamic> map) {
    return MoviesDTO(
      id: map['id'] ?? 0,
      title: map['title'] ?? '',
      releaseDate: map['release_date'] ?? '',
      posterPath: map['poster_path'] ?? '',
      adult: map['favorite'] ?? false,
      favorite: map['favorite'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoviesDTO.fromJson(String source) => MoviesDTO.fromMap(json.decode(source));
}