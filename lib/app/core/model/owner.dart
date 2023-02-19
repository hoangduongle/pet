class Owner {
  int? id;
  String? description;
  String? date;
  String? nickname;
  String? contact;
  String? request;
  String? urlImage;
  int? userId;
  int? animalId;

  Owner(
      {this.id,
      this.description,
      this.date,
      this.nickname,
      this.contact,
      this.request,
      this.urlImage,
      this.userId,
      this.animalId});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    date = json['date'];
    nickname = json['nickname'];
    contact = json['contact'];
    request = json['request'];
    urlImage = json['urlImage'];
    userId = json['userId'];
    animalId = json['animalId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['date'] = this.date;
    data['nickname'] = this.nickname;
    data['contact'] = this.contact;
    data['request'] = this.request;
    data['urlImage'] = this.urlImage;
    data['userId'] = this.userId;
    data['animalId'] = this.animalId;
    return data;
  }
}
