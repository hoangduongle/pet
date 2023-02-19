import 'package:pets/app/core/model/ordeDetail.dart';

class Service {
  int? id;
  String? name;
  String? description;
  String? status;
  int? price;
  String? urlImage;
  bool? isCareService;
  List<OrderDetail>? orderDetails;
  int? categoryId;
  int? shopId;

  Service(
      {this.id,
      this.name,
      this.description,
      this.status,
      this.price,
      this.urlImage,
      this.isCareService,
      this.orderDetails,
      this.categoryId,
      this.shopId});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    status = json['status'];
    price = json['price'];
    urlImage = json['urlImage'];
    isCareService = json['isCareService'];
    if (json['orderDetails'] != null) {
      orderDetails = <OrderDetail>[];
      json['orderDetails'].forEach((v) {
        orderDetails!.add(OrderDetail.fromJson(v));
      });
    }
    categoryId = json['categoryId'];
    shopId = json['shopId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['status'] = this.status;
    data['price'] = this.price;
    data['urlImage'] = this.urlImage;
    data['isCareService'] = this.isCareService;
    if (this.orderDetails != null) {
      data['orderDetails'] = this.orderDetails!.map((v) => v.toJson()).toList();
    }
    data['categoryId'] = this.categoryId;
    data['shopId'] = this.shopId;
    return data;
  }
}
