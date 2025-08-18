void main() {
  Map<String, int> puntajes = {
    'Carlos': 80,
    'María': 95,
    'Luis': 70,
    'Ana': 88,
  };

  print('Jugadores registrados:');
  puntajes.keys.forEach((nombre) => print(nombre));

  print('\nPuntaje de María: ${puntajes['María']}');

  puntajes['Luis'] = 75;

  puntajes['Pedro'] = 90;

  puntajes.remove('Ana');

  print('\nPuntajes actualizados:');
  puntajes.forEach((nombre, puntaje) {
    print('$nombre: $puntaje');
  });
}
