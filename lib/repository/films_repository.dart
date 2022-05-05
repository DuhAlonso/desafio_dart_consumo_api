import 'dart:convert';

import 'package:desafio_conusmo_api/models/film_model.dart';
import 'package:http/http.dart' as http;

class FilmsRepository {
  Future<List<FilmModel>> findAll() async {
    final filmsResponse =
        await http.get(Uri.parse('http://localhost:3031/filmes'));
    final filmsList = jsonDecode(filmsResponse.body);
    return filmsList.map<FilmModel>((filmMap) {
      return FilmModel.fromMap(filmMap);
    }).toList();
  }

  Future<FilmModel> getFilmById(String id) async {
    final filmResponse =
        await http.get(Uri.parse('http://localhost:3031/filmes/${id}'));
    return FilmModel.fromJson(filmResponse.body);
  }
}
