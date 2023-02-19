import 'package:pets/app/core/model/ordeDetail.dart';
import 'package:pets/app/core/model/payment.dart';

class Order {
  int? id;
  String? date;
  double? totalAmount;
  int? userId;
  Payment? payment;
  List<OrderDetail>? orderDetails;

  Order(
      {this.id,
      this.date,
      this.totalAmount,
      this.userId,
      this.payment,
      this.orderDetails});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    totalAmount = json['totalAmount'];
    userId = json['userId'];
    payment =
        json['payment'] != null ? Payment.fromJson(json['payment']) : null;
    if (json['orderDetails'] != null) {
      orderDetails = <OrderDetail>[];
      json['orderDetails'].forEach((v) {
        orderDetails!.add(OrderDetail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['totalAmount'] = this.totalAmount;
    data['userId'] = this.userId;
    if (this.payment != null) {
      data['payment'] = this.payment!.toJson();
    }
    if (this.orderDetails != null) {
      data['orderDetails'] = this.orderDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
