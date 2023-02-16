import 'package:pets/app/core/model/ordeDetail.dart';

class Order {
  int? id;
  String? date;
  int? totalAmount;
  int? userId;
  int? paymentId;
  List<OrderDetail>? orderDetails;

  Order({this.id, this.date, this.totalAmount, this.userId, this.paymentId, this.orderDetails});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    totalAmount = json['totalAmount'];
    userId = json['userId'];
    paymentId = json['paymentId'];
    if (json['orderDetails'] != null) {
      orderDetails = <OrderDetail>[];
      json['orderDetails'].forEach((v) {
        orderDetails!.add(new OrderDetail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['totalAmount'] = this.totalAmount;
    data['userId'] = this.userId;
    data['paymentId'] = this.paymentId;
    if (this.orderDetails != null) {
      data['orderDetails'] = this.orderDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
