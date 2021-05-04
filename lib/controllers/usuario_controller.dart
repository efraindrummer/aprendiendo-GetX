
import 'package:estados/models/usuario.dart';
import 'package:get/get.dart';

class UsuarioController extends GetxController {

  //estas variables son obsevables
  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  void cargarUsuario(Usuario pUsuario){
    this.existeUsuario.value = true;
    this.usuario.value = pUsuario;
  }

}