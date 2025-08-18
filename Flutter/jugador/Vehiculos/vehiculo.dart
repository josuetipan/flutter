class Taller {
  final String nombre = 'Taller de Vehículos';
  static late String mensajeGeneral = 'Bienvenida al Taller';
  static int totalReparaciones = 0;

  void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  static incrementarContador() {
    return totalReparaciones;
  }

  void obtenerReparaciones() {
    print('Total de reparaciones: $totalReparaciones');
  }

  Taller() {
    totalReparaciones++;
  }
}

class Empleado {
  late String nombre;

  void actualizarMensajeDelTaller(String nuevoMensaje) {
    Taller.mensajeGeneral = nuevoMensaje;
  }
}

class Vehiculo {
  late String? placa;
  late String diagnostico;
  static String estado = 'Pendiente';
  dynamic extraInfo;

  void registrarDiagnostico(String info) {
    diagnostico = info;
    estado = 'Reparado';
  }

  void resumen() {
    print(
        'Vehículo: $placa, Diagnóstico: $diagnostico, Estado: $estado, Extra Info: $extraInfo , Nombre: ${Taller().nombre}, ${Taller.mensajeGeneral}');
  }
}

//----------------------------------------------------
class Tienda {
  final String nombre = 'Tienda pepe';
  static late String anuncios;
  static int _productosVendidos = 0;

  void cambiarAnuncio(String nuevoAnuncio) {
    anuncios = nuevoAnuncio;
  }

  void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  late String codigo;
  late String descripcion;
  late double precio = 0.0;
  dynamic observacion;

  void registrarVenta(String info, double valor, dynamic observacion) {
    descripcion = info;
    precio = valor;
    this.observacion = observacion;
    Tienda tienda = Tienda();
    tienda.aumentarVentas();
  }

  void resumen() {
    print(
        'Producto: $codigo, Descripción: $descripcion, Precio: $precio, Observación: $observacion, Tienda: ${Tienda().nombre}, Anuncio: ${Tienda.anuncios}');
  }

  Producto() {
    codigo = 'P-${DateTime.now().millisecondsSinceEpoch}';
  }
}

void main(List<String> args) {
  Empleado empleado1 = Empleado();
  empleado1.nombre = 'Carlos';
  print('Empleado: ${empleado1.nombre}');
  empleado1.actualizarMensajeDelTaller('Taller Abierto');
  print(Taller.mensajeGeneral);

  Vehiculo vehiculo1 = Vehiculo();
  Vehiculo vehiculo2 = Vehiculo();

  vehiculo1.placa = 'ABC123';
  vehiculo2.placa = 'XYZ789';
  vehiculo1.registrarDiagnostico('Cambio de aceite');
  vehiculo2.registrarDiagnostico('Revisión de frenos');
  vehiculo1.extraInfo = 'Urgente';
  vehiculo2.extraInfo = 20.00;
  vehiculo1.resumen();
  vehiculo2.resumen();
  print(Taller.incrementarContador());
  //----------------------------------------------------
  Producto producto1 = Producto();
  Producto producto2 = Producto();
  producto1.registrarVenta('Producto 1', 10.0, 'Sin observaciones');
  producto2.registrarVenta('Producto 2', 15.0, 'Requiere revisión');
  Tienda tienda = Tienda();
  tienda.cambiarAnuncio('Gran Venta de Fin de Año');
  producto1.resumen();
  producto2.resumen();
  print('Ventas Totales: ${Tienda.obtenerVentas()}');
}
