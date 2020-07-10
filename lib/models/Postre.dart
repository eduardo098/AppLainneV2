class Postre {
  int id;
  String nombre;
  String descripcion;
  String imagen;
  double precioBase;
  String sabor;
  String tamano;
  String relleno;
  String forma;

  Postre(
      {this.id,
      this.nombre,
      this.descripcion,
      this.imagen,
      this.precioBase,
      this.sabor,
      this.tamano,
      this.relleno,
      this.forma});

  Postre.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    descripcion = json['descripcion'];
    imagen = json['imagen'];
    precioBase = json['precioBase'];
    sabor = json['sabor'];
    tamano = json['tamano'];
    relleno = json['relleno'];
    forma = json['forma'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['descripcion'] = this.descripcion;
    data['imagen'] = this.imagen;
    data['precioBase'] = this.precioBase;
    data['sabor'] = this.sabor;
    data['tamano'] = this.tamano;
    data['relleno'] = this.relleno;
    data['forma'] = this.forma;
    return data;
  }
}