class Caterogies {
  int? id;
  String? name;
  String? urlImage;

  Caterogies({this.id, this.name, this.urlImage});

  Caterogies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    urlImage = json['urlImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['urlImage'] = this.urlImage;
    return data;
  }
}
