import 'package:pets/app/core/model/order.dart';
import 'package:pets/app/core/model/owner.dart';

class User {
  int? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  List<Order>? orders;
  List<Owner>? owner;

  User({this.id, this.name, this.email, this.password, this.phone, this.orders, this.owner});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    if (json['orders'] != null) {
      orders = <Order>[];
      json['orders'].forEach((v) {
        orders!.add(Order.fromJson(v));
      });
    }
    if (json['owner'] != null) {
      owner = <Owner>[];
      json['owner'].forEach((v) {
        owner!.add(Owner.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    if (this.orders != null) {
      data['orders'] = this.orders!.map((v) => v.toJson()).toList();
    }
    if (this.owner != null) {
      data['owner'] = this.owner!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}