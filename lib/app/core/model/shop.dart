import 'package:pets/app/core/model/service.dart';

class Shop {
  int? id;
  String? name;
  int? rate;
  String? description;
  String? longtidute;
  String? latidute;
  String? urlImage;
  Service? services;

  Shop(
      {this.id,
      this.name,
      this.rate,
      this.description,
      this.longtidute,
      this.latidute,
      this.urlImage,
      this.services});

  Shop.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    rate = json['rate'];
    description = json['description'];
    longtidute = json['longtidute'];
    latidute = json['latidute'];
    urlImage = json['urlImage'];
    services = json['services'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['rate'] = this.rate;
    data['description'] = this.description;
    data['longtidute'] = this.longtidute;
    data['latidute'] = this.latidute;
    data['urlImage'] = this.urlImage;
    data['services'] = this.services;
    return data;
  }
}
