import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //print(Get.arguments['edad']);
    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cargarUsuario(Usuario(nombre: 'Efrain', edad: 22));
                Get.snackbar(
                  'Usuario establecido', 
                  'Efrain es el nombre del usuario',
                  backgroundColor: Colors.white,
                  boxShadows: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10
                    )
                  ]
                );
              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cambiarEdad(25);
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.agregarProfesion('Profesion ${usuarioCtrl.profesionesCount + 1}');
              }
            ),
            
            MaterialButton(
              child: Text('Cambiar Tema', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme( Get.isDarkMode ?  ThemeData.light() : ThemeData.dark());
              }
            ),

          ],
        )
     ),
   );
  }
}