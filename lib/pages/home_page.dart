import 'package:devic_design/models/productos_model.dart';
import 'package:devic_design/pages/card_producto_page.dart';
import 'package:devic_design/utils/ui_constans.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            EvaIcons.menu2Outline,
            color: Colors.black,
            size: 30,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                EvaIcons.shoppingCartOutline,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Text("Lo más saludable a tu domicilio",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30)),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        EvaIcons.searchOutline,
                        size: 23,
                      ),
                      hintText: 'Buscar'),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Verduras",
                      style: TextStyle(
                          color: verdePrimario,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text(
                      "Frutas",
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productos.length,
                    itemBuilder: (context, index) => CardProducto(
                          productos: productos[index],
                        )),
              ),
              SizedBox(height: 30),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/promo.png"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ));
  }
}
