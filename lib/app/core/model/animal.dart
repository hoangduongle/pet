import 'package:pets/app/core/model/animalType.dart';
import 'package:pets/app/core/model/owner.dart';

class Animal {
  int? id;
  String? name;
  String? description;
  int? animalTypeId;
  AnimalType? animalType;
  List<Owner>? owners;

  Animal({this.id, this.name, this.description, this.animalTypeId, this.animalType, this.owners});

  Animal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    animalTypeId = json['animalTypeId'];
    animalType = json['animalType'] != null ? new AnimalType.fromJson(json['animalType']) : null;
    if (json['owners'] != null) {
      owners = <Owner>[];
      json['owners'].forEach((v) {
        owners!.add(new Owner.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['animalTypeId'] = this.animalTypeId;
    if (this.animalType != null) {
      data['animalType'] = this.animalType!.toJson();
    }
    if (this.owners != null) {
      data['owners'] = this.owners!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
