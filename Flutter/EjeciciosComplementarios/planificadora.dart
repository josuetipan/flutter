void main() {
  List<String> comidasFavoritas = [
    'Encebollado',
    'Ceviche',
    'Arroz con pollo',
    'Tacos',
    'Pizza',
  ];

  comidasFavoritas.add('Lasagna');

  comidasFavoritas.remove('Tacos');

  print('Comida en posición 2: ${comidasFavoritas[2]}');

  List<List<String>> menuSemanal = [
    ['Café con pan', 'Arroz con carne', 'Sopa de fideos'], // Lunes
    ['Jugo y cereal', 'Pollo al horno', 'Ensalada de atún'], // Martes
    ['Té y tostadas', 'Lasagna', 'Empanadas'], // Miércoles
    ['Leche y galletas', 'Ceviche', 'Sándwich'], // Jueves
    ['Huevos revueltos', 'Arroz con camarón', 'Pizza'], // Viernes
    ['Yogur y frutas', 'Encebollado', 'Hamburguesa'], // Sábado
    ['Chocolate caliente', 'Arroz con pollo', 'Tacos'], // Domingo
  ];

  print('Almuerzo del martes: ${menuSemanal[1][1]}');

  menuSemanal[4][2] = 'Sushi';
  print('Cena actualizada del viernes: ${menuSemanal[4][2]}');

  List<String> dias = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo',
  ];

  print('\nMenú semanal:');
  for (int i = 0; i < menuSemanal.length; i++) {
    print('${dias[i]}:');
    print('  Desayuno: ${menuSemanal[i][0]}');
    print('  Almuerzo: ${menuSemanal[i][1]}');
    print('  Cena: ${menuSemanal[i][2]}\n');
  }
}
