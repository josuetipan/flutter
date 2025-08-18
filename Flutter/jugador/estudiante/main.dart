import 'estudiante.dart';

void main() {
  final estudiante1 = Estudiante('Carlos');
  final estudiante2 = Estudiante('Ana');

  estudiante1.cuaderno = 'Matemáticas';
  estudiante2.cuaderno = 'Ciencias';

  print(
      'Estudiante 1: ${estudiante1.nombre}, Cuaderno: ${estudiante1.cuaderno}');
  print(
      'Estudiante 2: ${estudiante2.nombre}, Cuaderno: ${estudiante2.cuaderno}');

  print(Estudiante.pizarra);
  estudiante1.escribirPizarra('Hola desde Carlos');
  print(Estudiante.pizarra);

  print(Estudiante.obtenerContador());
}
