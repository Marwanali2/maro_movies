import 'package:equatable/equatable.dart';

class MovieModel extends Equatable {
  final bool? adult;
  final String? backdropPath;
  final int? id;
  final String? title;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final String? posterPath;
  final String? mediaType;
  final List<int>? genreIds;
  final double? popularity;
  final String? releaseDate;
  final bool? video;
  final int? voteAverage;
  final int? voteCount;

  const MovieModel({
    this.adult,
    this.backdropPath,
    this.id,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    this.releaseDate,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        adult: json['adult'] as bool?,
        backdropPath: json['backdrop_path'] as String?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        originalLanguage: json['original_language'] as String?,
        originalTitle: json['original_title'] as String?,
        overview: json['overview'] as String?,
        posterPath: json['poster_path'] as String?,
        mediaType: json['media_type'] as String?,
        genreIds: json['genre_ids'] as List<int>?,
        popularity: (json['popularity'] as num?)?.toDouble(),
        releaseDate: json['release_date'] as String?,
        video: json['video'] as bool?,
        voteAverage: json['vote_average'] as int?,
        voteCount: json['vote_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'id': id,
        'title': title,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'poster_path': posterPath,
        'media_type': mediaType,
        'genre_ids': genreIds,
        'popularity': popularity,
        'release_date': releaseDate,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };

  @override
  List<Object?> get props {
    return [
      adult,
      backdropPath,
      id,
      title,
      originalLanguage,
      originalTitle,
      overview,
      posterPath,
      mediaType,
      genreIds,
      popularity,
      releaseDate,
      video,
      voteAverage,
      voteCount,
    ];
  }
}
