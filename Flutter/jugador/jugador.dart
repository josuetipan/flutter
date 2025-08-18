class Jugador {
  static const String nombreJuego = 'Aventuras Epicas';
  final int id;
  late String nombre;
  var puntuacion = 0;
  dynamic extra;

  Jugador(this.id);
}

void main() {
  Jugador jugador1 = Jugador(1);

  jugador1.nombre = 'Juan';
  jugador1.puntuacion = 100;
  jugador1.extra = "Premio";
  jugador1.extra = 10;
  jugador1.extra = true;

  print(jugador1.nombre);
  print(jugador1.puntuacion);
  print(jugador1.extra);

  print(Jugador.nombreJuego);
}
