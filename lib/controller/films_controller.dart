import 'package:desafio_conusmo_api/repository/films_repository.dart';

class FilmsController {
  final _filmsRepository = FilmsRepository();

  Future<void> getAll() async {
    final films = await _filmsRepository.findAll();
    films.forEach(print);
  }

  Future<void> getById() async {
    final film = await _filmsRepository.getFilmById('675353');
    print(film);
  }
}
