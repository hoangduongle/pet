class Owner {
  int? id;
  String? description;
  String? date;
  int? userId;
  int? animalId;

  Owner({this.id, this.description, this.date, this.userId, this.animalId});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    date = json['date'];
    userId = json['userId'];
    animalId = json['animalId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['date'] = this.date;
    data['userId'] = this.userId;
    data['animalId'] = this.animalId;
    return data;
  }
}
