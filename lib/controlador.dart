

import 'package:get/get.dart';

class Controlador extends GetxController {
  final _cambiovista = 0.obs;

  void cambioPosicion(int numero) {
    _cambiovista.value = numero;
  }

  int get cambiovista => _cambiovista.value;
}
