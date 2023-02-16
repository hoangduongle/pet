import 'package:flutter/foundation.dart';
import 'package:pets/app/core/model/category.dart';
import 'package:pets/app/core/model/ordeDetail.dart';

class Service {
  int? id;
  String? name;
  String? description;
  String? status;
  List<OrderDetail>? orderDetails;
  List<Caterogies>? categories;

  Service({this.id, this.name, this.description, this.status, this.orderDetails, this.categories});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    status = json['status'];
    if (json['orderDetails'] != null) {
      orderDetails = <OrderDetail>[];
      json['orderDetails'].forEach((v) {
        orderDetails!.add(new OrderDetail.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Caterogies>[];
      json['categories'].forEach((v) {
        categories!.add(new Caterogies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['status'] = this.status;
    if (this.orderDetails != null) {
      data['orderDetails'] = this.orderDetails!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
