import 'package:flutter_tarea_respuesta/controlador.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main(List<String> args){
   Get.put(Controlador());
   runApp(Principal());
}


Controlador CambioVentana = Get.find();


class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _Principal();
}

class _Principal extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child:Column(
            children: [
              ListTile(
                  title: Text("inicio"),
                  leading: Icon(Icons.home),
                  onTap: (){
                    CambioVentana.cambioPosicion(0);
                  },
              ),
              ListTile(
                  title: Text("deportes"),
                  leading: Icon(Icons.sports_soccer_rounded),
                  onTap: (){
                    CambioVentana.cambioPosicion(1);
                  },
              ),
              ListTile(
                  title: Text("tecnologia"),
                  leading: Icon(Icons.computer_sharp),
                  onTap: (){
                    CambioVentana.cambioPosicion(2);
                  },
              ),
              ListTile(
                  title: Text("entretenimiento"),
                  leading: Icon(Icons.tv),
                  onTap: (){
                    CambioVentana.cambioPosicion(3);
                  },
              )
              ] 
              )
          ),
          appBar: AppBar(
            backgroundColor: Colors.cyan[300],
            foregroundColor: Colors.white,
            title: Text("Aplicacion de inicio"),
          ),
          body: Obx(()=>coleccionpaginas[CambioVentana.cambiovista]),
        ),
    );
  }
}

/////////////////////////////////////////////////////
List coleccionpaginas =[contenidoInicio(),contenidoDeportes(),contenidoTecnologia(),contenidoEbnretenimiento()];
/////////////////////////////////////////////////////


contenidoInicio(){
  return Text("hogar de la aplicacion");
}
contenidoDeportes(){
  return Text("seccion de deportes");
}
contenidoTecnologia(){
  return Text("seccion de tectnologia");
}
contenidoEbnretenimiento(){
  return Text("seccion de entretenimiento");
}