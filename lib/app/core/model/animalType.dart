class AnimalType {
  int? id;
  String? name;
  String? description;
  String? urlImage;

  AnimalType({this.id, this.name, this.description, this.urlImage});

  AnimalType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    urlImage = json['urlImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['urlImage'] = this.urlImage;
    return data;
  }
}
