import 'package:devic_design/models/productos_model.dart';
import 'package:devic_design/utils/ui_constans.dart';
import 'package:flutter/material.dart';

class CardProducto extends StatelessWidget {
  final Productos productos;
  final Function ontap;
  const CardProducto({Key key, this.productos, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffcccccc),
                      blurRadius: 15,
                      spreadRadius: -5,
                      offset: Offset(0, 3)),
                ]),
            height: 230,
            width: 123,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                        child: Hero(
                  tag: '${productos.id}',
                  child: Image.asset(productos.img, height: 50, width: 100),
                ))),
                Text(productos.nombre,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                SizedBox(height: 10),
                Text("\$${productos.precio}"),
                SizedBox(height: 10),
                Center(
                  child: FlatButton(
                      minWidth: 60,
                      height: 30,
                      color: verdeSecundario,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: verdeSecundario),
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {},
                      child: Text("Agregar",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14))),
                ),
              ],
            )));
  }
}
