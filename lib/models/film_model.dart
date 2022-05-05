import 'dart:convert';

class FilmModel {
  bool isAdult;
  String coverUrl;
  List<int> genreIds;
  String id;
  String language;
  String title;
  String description;
  double popularity;
  String releaseDate;
  double vote;
  int voteCount;

  FilmModel({
    required this.isAdult,
    required this.coverUrl,
    required this.genreIds,
    required this.id,
    required this.language,
    required this.title,
    required this.description,
    required this.popularity,
    required this.releaseDate,
    required this.vote,
    required this.voteCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'isAdult': isAdult,
      'coverUrl': coverUrl,
      'genreIds': genreIds,
      'id': id,
      'language': language,
      'title': title,
      'description': description,
      'popularity': popularity,
      'releaseDate': releaseDate,
      'vote': vote,
      'voteCount': voteCount,
    };
  }

  factory FilmModel.fromMap(Map<String, dynamic> map) {
    return FilmModel(
      isAdult: map['adult'] ?? false,
      coverUrl: map['poster_path'] ?? '',
      genreIds: List<int>.from(map['genre_ids']),
      id: map['id'] ?? '',
      language: map['original_language'] ?? '',
      title: map['original_title'] ?? '',
      description: map['overview'] ?? '',
      popularity: map['popularity']?.toDouble() ?? 0.0,
      releaseDate: map['release_date'] ?? '',
      vote: map['vote_average']?.toDouble() ?? 0.0,
      voteCount: map['vote_count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory FilmModel.fromJson(String data) =>
      FilmModel.fromMap(json.decode(data));

  @override
  String toString() {
    return 'FilmModel(isAdult: $isAdult, coverUrl: $coverUrl, genreIds: $genreIds, id: $id, language: $language, title: $title, description: $description, popularity: $popularity, releaseDate: $releaseDate, vote: $vote, voteCount: $voteCount)';
  }
}
