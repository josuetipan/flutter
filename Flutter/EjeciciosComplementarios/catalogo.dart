class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);

  @override
  String toString() => '$titulo ($anioEstreno)';
}

void main() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [
      Pelicula('Stranger Things', 2016),
      Pelicula('The Witcher', 2019),
    ],
    'HBO': [
      Pelicula('Game of Thrones', 2011),
      Pelicula('The Last of Us', 2023),
    ],
    'Disney+': [Pelicula('Luca', 2021), Pelicula('Encanto', 2021)],
  };

  print('Películas en Netflix:');
  catalogoStreaming['Netflix']?.forEach((p) => print('- ${p.titulo}'));
  catalogoStreaming['Disney+']?.add(Pelicula('Elemental', 2023));
  catalogoStreaming['HBO']?[1].anioEstreno = 2024;
  catalogoStreaming['Netflix']?.removeWhere((p) => p.titulo == 'The Witcher');

  print('\nCatálogo completo:');
  catalogoStreaming.forEach((plataforma, peliculas) {
    print('Plataforma: $plataforma');
    for (var pelicula in peliculas) {
      print('- ${pelicula.titulo} (${pelicula.anioEstreno})');
    }
    print('');
  });
}
