class Perfil {
  int id;
  String nombre;
  String apellido;
  String telefono;
  String direccion;
  String ciudad;
  String correo;
  String contrasena;
  String avatar;

  Perfil(
      {this.id,
      this.nombre,
      this.apellido,
      this.telefono,
      this.direccion,
      this.ciudad,
      this.correo,
      this.contrasena,
      this.avatar});

  Perfil.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nombre = json['Nombre'];
    apellido = json['Apellido'];
    telefono = json['Telefono'];
    direccion = json['Direccion'];
    ciudad = json['Ciudad'];
    correo = json['Correo'];
    contrasena = json['Contrasena'];
    avatar = json['Avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Nombre'] = this.nombre;
    data['Apellido'] = this.apellido;
    data['Telefono'] = this.telefono;
    data['Direccion'] = this.direccion;
    data['Ciudad'] = this.ciudad;
    data['Correo'] = this.correo;
    data['Contrasena'] = this.contrasena;
    data['Avatar'] = this.avatar;
    return data;
  }
}