class MovieEntities {
  final num id;
  final String title;
  final String releaseDate;
  final String posterPath;
  final bool adult;
  final bool favorite;
  MovieEntities({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.posterPath,
    required this.adult,
    required this.favorite,
  });
}