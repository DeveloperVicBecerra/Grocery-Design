class Productos {
  final String img, nombre, descripcion;
  final int precio, id;

  Productos({this.img, this.nombre, this.descripcion, this.precio, this.id});
}

List<Productos> productos = [
  Productos(
      id: 1,
      img: "assets/berenjena.png",
      nombre: 'Berenjena',
      precio: 20,
      descripcion:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Productos(
      id: 2,
      img: "assets/patata.png",
      nombre: 'Patata',
      precio: 20,
      descripcion:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Productos(
      id: 3,
      img: "assets/calabaza.png",
      nombre: 'Calabaza',
      precio: 20,
      descripcion:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Productos(
      id: 4,
      img: "assets/coliflor.png",
      nombre: 'Coliflor',
      precio: 20,
      descripcion:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Productos(
      id: 5,
      img: "assets/zanahoria.png",
      nombre: 'Zanahoria',
      precio: 20,
      descripcion:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.')
];
