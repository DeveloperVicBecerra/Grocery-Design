import 'package:devic_design/pages/home_page.dart';
import 'package:devic_design/utils/ui_constans.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [_background(), _formulario()],
        ));
  }
}

class _formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, right: 35),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "¡Hola bienvenido!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          Text(
            "Ingresa tu datos",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 70),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Correo Electrónico',
                  prefixIcon: Icon(EvaIcons.emailOutline)),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  prefixIcon: Icon(EvaIcons.lockOutline)),
            ),
          ),
          SizedBox(height: 45),
          Center(
            child: FlatButton(
                minWidth: 200,
                color: verdeSecundario,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: verdeSecundario),
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Iniciar Sesión",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18))),
          ),
          SizedBox(height: 25),
          Center(
            child: RichText(
                text: TextSpan(
                    text: 'No tienes cuenta?',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                    children: [
                  TextSpan(
                    text: '  Registrarme Ahora',
                    style: TextStyle(
                        fontSize: 15,
                        color: verdePrimario,
                        fontWeight: FontWeight.w600),
                  )
                ])),
          )
        ],
      ),
    );
  }
}

class _background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
                top: -123,
                right: -200,
                child: Image.asset("assets/verde.png", height: 330)),
            Positioned(
                top: 10,
                left: -200,
                child: Image.asset("assets/cebolla.png", height: 330)),
            Positioned(
                bottom: -123,
                left: -150,
                child: Image.asset(
                  "assets/brocoli.png",
                  height: 340,
                )),
            Positioned(
              bottom: -75,
              right: -50,
              child: Image.asset("assets/rabanos.png", height: 230),
            )
          ],
        ));
  }
}
